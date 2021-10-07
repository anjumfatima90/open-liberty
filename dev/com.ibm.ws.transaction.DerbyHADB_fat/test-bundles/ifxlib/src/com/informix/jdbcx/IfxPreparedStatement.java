/*******************************************************************************
 * Copyright (c) 2020, 2021 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package com.informix.jdbcx;

import java.io.InputStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.net.URL;
import java.sql.Array;
import java.sql.Blob;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.Date;
import java.sql.NClob;
import java.sql.ParameterMetaData;
import java.sql.PreparedStatement;
import java.sql.Ref;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.RowId;
import java.sql.SQLException;
import java.sql.SQLTransientException;
import java.sql.SQLWarning;
import java.sql.SQLXML;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

/**
 * The IfxPreparedStatement and IfxStatement classes are responsible for simulating HA related exceptions.
 *
 * Based on the configuration specified in the test infrastructure HATABLE the methods in the class can
 * drive SQLTransientExceptions or SQLExceptions at appropriate points through the simQueryFailover() method.
 */
public class IfxPreparedStatement implements PreparedStatement {
    PreparedStatement wrappedPS = null;

    static int failoverCounter = 0;
    static boolean failoverQuery = false;

    /**
     * Use the _duplicateRows object to store a set of rows that will be duplicated in the DB table
     *
     */
    private static Map<Integer, List> _duplicateRows;

    /**
     * Keep track of each stored row in _duplicateRows using _rowNum
     *
     */
    private static int _rowNum = 0;

    /**
     * Use the _columnValues object to store a list of values in a particular row to be duplicated.
     *
     */
    private static List<Object> _columnValues;

    private static int _lastIndexEntry = 0;

    /**
     * The _cachedRow object keeps a local cache of column values.
     *
     */
    private static Map<Integer, Object> _cachedRow;

    private boolean _tranlogInsertFlag = false;
    /**
     * Lookup string that allows character digit lookup by index value.
     * ie _digits[9] == '9' etc.
     */
    private final static String _digits = "0123456789abcdef";

    IfxPreparedStatement(PreparedStatement realPS) {
        wrappedPS = realPS;
    }

    @Override
    public void addBatch(String sql) throws SQLException {
        wrappedPS.addBatch(sql);
    }

    @Override
    public void cancel() throws SQLException {
        wrappedPS.cancel();
    }

    @Override
    public void clearBatch() throws SQLException {
        wrappedPS.clearBatch();
    }

    @Override
    public void clearWarnings() throws SQLException {
        wrappedPS.clearWarnings();
    }

    @Override
    public void close() throws SQLException {
        wrappedPS.close();
    }

    @Override
    public boolean execute(String sql) throws SQLException {
        boolean ret = wrappedPS.execute(sql);
        return ret;
    }

    @Override
    public boolean execute(String sql, int autoGeneratedKeys) throws SQLException {
        boolean ret = wrappedPS.execute(sql, autoGeneratedKeys);
        return ret;
    }

    @Override
    public boolean execute(String sql, int[] columnIndexes) throws SQLException {
        boolean ret = wrappedPS.execute(sql, columnIndexes);
        return ret;
    }

    @Override
    public boolean execute(String sql, String[] columnNames) throws SQLException {
        boolean ret = wrappedPS.execute(sql, columnNames);
        return ret;
    }

    @Override
    public int[] executeBatch() throws SQLException {
        int[] ret = null;
        boolean failOver = false;
        System.out.println("SIMHADB: executeBatch, this - " + this + ", wrapped - " + wrappedPS);

        if (IfxConnection.isFailoverEnabled()) {
            System.out
                            .println("SIMHADB: executeBatch, failover Enabled, Counter -" + IfxConnection.getFailoverCounter());
            IfxConnection.incrementFailoverCounter();
            if (IfxConnection.getFailoverCounter() == IfxConnection.getFailoverValue())
                failOver = true;
            if (IfxConnection.getFailoverCounter() > IfxConnection.getFailoverValue()
                && IfxConnection.getFailingRetries() > 1
                && IfxConnection.getFailingRetryCounter() <= IfxConnection.getFailingRetries()) {
                System.out.println("SIMHADB: executeBatch, fail on the retry");
                failOver = true;
            }
        }

        if (IfxConnection.isDuplicationEnabled()) {
            System.out.println("SIMHADB: executeBatch, duplication Enabled, Counter -" + IfxConnection.getDuplicateCounter());
            IfxConnection.incrementDuplicateCounter();
            if (IfxConnection.getDuplicateCounter() >= IfxConnection.getFailoverValue()) {
                IfxConnection.setDuplicateNow();
            }
            if (IfxConnection.getDuplicateCounter() >= IfxConnection.getFailoverValue() + 2) {
                System.out.println("SIMHADB: executeBatch, enter halt phase with rowMap " + _duplicateRows);

                //halt
                if (_tranlogInsertFlag)
                    duplicateAndHalt();
            }
        }

        if (IfxConnection.isHaltEnabled()) {
            System.out.println("SIMHADB: executeBatch, halt Enabled, Counter -" + IfxConnection.getHaltCounter());
            IfxConnection.incrementHaltCounter();

            if (IfxConnection.getHaltCounter() >= IfxConnection.getFailoverValue()) {
                System.out.println("SIMHADB: executeBatch, time to halt");

                //halt
                if (_tranlogInsertFlag)
                    simplyHalt();
            }
        }

        if (failOver) {
            System.out.println("SIMHADB: Feigning query failover, close connection");
            IfxConnectionPoolDataSource.setTestingFailoverAtRuntime(false);
            Connection myconn = getConnection();
            try {
                myconn.rollback();
//                myconn.close();
            } catch (Exception ex) {
                System.out.println("SIMHADB: on close connection, caught exc: " + ex);
            }
            String sqlReason = "Generated internally";
            String sqlState = "Generated reason";

            int reasonCode = IfxConnection.getSimSQLCode(); // FOR DB2 should be
                                                            // -4498, Oracle
                                                            // 17410
            System.out.println("SIMHADB: sqlcode set to: " + reasonCode);
            // if reason code is "-3" then exception is non-transient, otherwise it is transient
            SQLException sqlex;
            if (reasonCode == -3)
                // A hard, non-recoverable exception
                sqlex = new SQLException(sqlReason, sqlState, reasonCode);
            else
                // A transient, recoverable exception
                sqlex = new SQLTransientException("A simulated transient SQL Exception");
            throw sqlex;
        } else {
            System.out.println("SIMHADB: ExecuteBatch");
            ret = wrappedPS.executeBatch();
        }

        System.out.println("SIMHADB: executeBatch - " + ret);
        return ret;
    }

    @Override
    public ResultSet executeQuery(String sql) throws SQLException {

        System.out.println("SIMHADB: executeQuery, this - " + this + ", sql - " + sql); // +
                                                                                        // ",
                                                                                        // fail
                                                                                        // Counter
                                                                                        // -"
                                                                                        // +
                                                                                        // failoverCounter
                                                                                        // +
                                                                                        // ",
                                                                                        // wrapped
                                                                                        // -
                                                                                        // "
                                                                                        // +
                                                                                        // wrappedStmt);

        simQueryFailover();

        ResultSet ret = wrappedPS.executeQuery(sql);
        System.out.println("SIMHADB: executeQuery exit, ret - " + ret);
        return ret;
    }

    @Override
    public int executeUpdate(String sql) throws SQLException {
        System.out.println("SIMHADB: executeUpdate, this - " + this + ", sql: " + sql);

        simQueryFailover();

        int ret = wrappedPS.executeUpdate(sql);
        System.out.println("SIMHADB: executeUpdate exit, ret - " + ret);
        return ret;
    }

    @Override
    public int executeUpdate(String sql, int autoGeneratedKeys) throws SQLException {
        System.out.println("SIMHADB: executeUpdate, this - " + this + ", sql: " + sql + ", keys: " + autoGeneratedKeys);

        simQueryFailover();
        int ret = wrappedPS.executeUpdate(sql, autoGeneratedKeys);
        System.out.println("SIMHADB: executeUpdate exit, ret - " + ret);
        return ret;
    }

    @Override
    public int executeUpdate(String sql, int[] columnIndexes) throws SQLException {
        System.out.println("SIMHADB: executeUpdate, this - " + this + ", sql: " + sql + ", columnindexes");

        simQueryFailover();
        int ret = wrappedPS.executeUpdate(sql, columnIndexes);
        System.out.println("SIMHADB: executeUpdate exit, ret - " + ret);
        return ret;
    }

    @Override
    public int executeUpdate(String sql, String[] columnNames) throws SQLException {
        System.out.println("SIMHADB: executeUpdate, this - " + this + ", sql: " + sql + ", columnnames");

        simQueryFailover();
        int ret = wrappedPS.executeUpdate(sql, columnNames);
        System.out.println("SIMHADB: executeUpdate exit, ret - " + ret);
        return ret;
    }

    @Override
    public Connection getConnection() throws SQLException {
        Connection ret = wrappedPS.getConnection();
        return ret;
    }

    @Override
    public int getFetchDirection() throws SQLException {
        int ret = wrappedPS.getFetchDirection();
        return ret;
    }

    @Override
    public int getFetchSize() throws SQLException {
        int ret = wrappedPS.getFetchSize();
        return ret;
    }

    @Override
    public ResultSet getGeneratedKeys() throws SQLException {
        ResultSet ret = wrappedPS.getGeneratedKeys();
        return ret;
    }

    @Override
    public int getMaxFieldSize() throws SQLException {
        int ret = wrappedPS.getMaxFieldSize();
        return ret;
    }

    @Override
    public int getMaxRows() throws SQLException {
        int ret = wrappedPS.getMaxRows();
        return ret;
    }

    @Override
    public boolean getMoreResults() throws SQLException {
        boolean ret = wrappedPS.getMoreResults();
        return ret;
    }

    @Override
    public boolean getMoreResults(int current) throws SQLException {
        boolean ret = wrappedPS.getMoreResults(current);
        return ret;
    }

    @Override
    public int getQueryTimeout() throws SQLException {
        int ret = wrappedPS.getQueryTimeout();
        return ret;
    }

    @Override
    public ResultSet getResultSet() throws SQLException {
        ResultSet ret = wrappedPS.getResultSet();
        return ret;
    }

    @Override
    public int getResultSetConcurrency() throws SQLException {
        int ret = wrappedPS.getResultSetConcurrency();
        return ret;
    }

    @Override
    public int getResultSetHoldability() throws SQLException {
        int ret = wrappedPS.getResultSetHoldability();
        return ret;
    }

    @Override
    public int getResultSetType() throws SQLException {
        int ret = wrappedPS.getResultSetType();
        return ret;
    }

    @Override
    public int getUpdateCount() throws SQLException {
        int ret = wrappedPS.getUpdateCount();
        return ret;
    }

    @Override
    public SQLWarning getWarnings() throws SQLException {
        SQLWarning ret = wrappedPS.getWarnings();
        return ret;
    }

    @Override
    public void setCursorName(String name) throws SQLException {
        wrappedPS.setCursorName(name);
    }

    @Override
    public void setEscapeProcessing(boolean enable) throws SQLException {
        wrappedPS.setEscapeProcessing(enable);
    }

    @Override
    public void setFetchDirection(int direction) throws SQLException {
        wrappedPS.setFetchDirection(direction);
    }

    @Override
    public void setFetchSize(int rows) throws SQLException {
        wrappedPS.setFetchSize(rows);
    }

    @Override
    public void setMaxFieldSize(int max) throws SQLException {
        wrappedPS.setMaxFieldSize(max);
    }

    @Override
    public void setMaxRows(int max) throws SQLException {
        wrappedPS.setMaxRows(max);
    }

    @Override
    public void setQueryTimeout(int seconds) throws SQLException {
        wrappedPS.setQueryTimeout(seconds);
    }

    @Override
    public boolean isClosed() throws SQLException {
        boolean ret = wrappedPS.isClosed();
        return ret;
    }

    @Override
    public void setPoolable(boolean poolable) throws SQLException {
        wrappedPS.setPoolable(poolable);
    }

    @Override
    public boolean isPoolable() throws SQLException {
        boolean ret = wrappedPS.isPoolable();
        return ret;
    }

    @Override
    public <T> T unwrap(Class<T> iface) throws SQLException {
        T ret = wrappedPS.unwrap(iface);
        return ret;
    }

    @Override
    public boolean isWrapperFor(Class<?> iface) throws SQLException {
        boolean ret = wrappedPS.isWrapperFor(iface);
        return ret;
    }

    @Override
    public void addBatch() throws SQLException {
        System.out.println("SIMHADB: addBatch, this - " + this);
        wrappedPS.addBatch();
    }

    @Override
    public void clearParameters() throws SQLException {
        wrappedPS.clearParameters();
    }

    @Override
    public boolean execute() throws SQLException {
        boolean ret = wrappedPS.execute();
        return ret;
    }

    @Override
    public ResultSet executeQuery() throws SQLException {
        System.out.println("SIMHADB: executeQuery, this - " + this); // + ",
                                                                     // fail
                                                                     // Counter
                                                                     // -" +
                                                                     // failoverCounter
                                                                     // + ",
                                                                     // wrapped
                                                                     // - " +
                                                                     // wrappedStmt);

        simQueryFailover();

        ResultSet ret = wrappedPS.executeQuery();
        System.out.println("SIMHADB: executeQuery exit, ret - " + ret);
        return ret;
    }

    @Override
    public int executeUpdate() throws SQLException {
        System.out.println("SIMHADB: executeUpdate, this - " + this);

        simQueryFailover();

        int ret = wrappedPS.executeUpdate();
        System.out.println("SIMHADB: executeUpdate exit, ret - " + ret);
        return ret;
    }

    @Override
    public ResultSetMetaData getMetaData() throws SQLException {
        ResultSetMetaData ret = wrappedPS.getMetaData();
        return ret;
    }

    @Override
    public ParameterMetaData getParameterMetaData() throws SQLException {
        ParameterMetaData ret = wrappedPS.getParameterMetaData();
        return ret;
    }

    @Override
    public void setArray(int parameterIndex, Array theArray) throws SQLException {
        wrappedPS.setArray(parameterIndex, theArray);
    }

    @Override
    public void setAsciiStream(int parameterIndex, InputStream theInputStream, int length) throws SQLException {
        wrappedPS.setAsciiStream(parameterIndex, theInputStream, length);
    }

    @Override
    public void setBigDecimal(int parameterIndex, BigDecimal theBigDecimal) throws SQLException {
        wrappedPS.setBigDecimal(parameterIndex, theBigDecimal);
    }

    @Override
    public void setBinaryStream(int parameterIndex, InputStream theInputStream, int length) throws SQLException {
        wrappedPS.setBinaryStream(parameterIndex, theInputStream, length);
    }

    @Override
    public void setBlob(int parameterIndex, Blob theBlob) throws SQLException {
        wrappedPS.setBlob(parameterIndex, theBlob);
    }

    @Override
    public void setBoolean(int parameterIndex, boolean theBoolean) throws SQLException {
        wrappedPS.setBoolean(parameterIndex, theBoolean);
    }

    @Override
    public void setByte(int parameterIndex, byte theByte) throws SQLException {
        wrappedPS.setByte(parameterIndex, theByte);
    }

    @Override
    public void setBytes(int parameterIndex, byte[] theBytes) throws SQLException {
        wrappedPS.setBytes(parameterIndex, theBytes);
        String theBytesString = toHexString(theBytes, 32);
        System.out.println("SIMHADB: setBytes, index: " + parameterIndex + " value: " + theBytesString);
        if (IfxConnection.isDuplicateNow()) {
            System.out.println("SIMHADB: dup phase setBytes, index: " + parameterIndex + " value: " + theBytesString);
            collectDataForDuplicateRows(parameterIndex, theBytes);
        }
    }

    @Override
    public void setCharacterStream(int parameterIndex, Reader reader, int length) throws SQLException {
        wrappedPS.setCharacterStream(parameterIndex, reader, length);
    }

    @Override
    public void setClob(int parameterIndex, Clob theClob) throws SQLException {
        wrappedPS.setClob(parameterIndex, theClob);
    }

    @Override
    public void setDate(int parameterIndex, Date theDate) throws SQLException {
        wrappedPS.setDate(parameterIndex, theDate);
    }

    @Override
    public void setDate(int parameterIndex, Date theDate, Calendar cal) throws SQLException {
        wrappedPS.setDate(parameterIndex, theDate, cal);
    }

    @Override
    public void setDouble(int parameterIndex, double theDouble) throws SQLException {
        wrappedPS.setDouble(parameterIndex, theDouble);
    }

    @Override
    public void setFloat(int parameterIndex, float theFloat) throws SQLException {
        wrappedPS.setFloat(parameterIndex, theFloat);
    }

    @Override
    public void setInt(int parameterIndex, int theInt) throws SQLException {
        wrappedPS.setInt(parameterIndex, theInt);
    }

    @Override
    public void setLong(int parameterIndex, long theLong) throws SQLException {
        wrappedPS.setLong(parameterIndex, theLong);
        System.out.println("SIMHADB: setLong, index: " + parameterIndex + " value: " + theLong);
        if (IfxConnection.isDuplicateNow()) {
            System.out.println("SIMHADB: dup phase setLong, index: " + parameterIndex + " value: " + theLong);
            collectDataForDuplicateRows(parameterIndex, theLong);
        }
    }

    @Override
    public void setNull(int parameterIndex, int sqlType) throws SQLException {
        wrappedPS.setNull(parameterIndex, sqlType);
    }

    @Override
    public void setNull(int paramIndex, int sqlType, String typeName) throws SQLException {
        wrappedPS.setNull(paramIndex, sqlType, typeName);
    }

    @Override
    public void setObject(int parameterIndex, Object theObject) throws SQLException {
        wrappedPS.setObject(parameterIndex, theObject);
    }

    @Override
    public void setObject(int parameterIndex, Object theObject, int targetSqlType) throws SQLException {
        wrappedPS.setObject(parameterIndex, theObject, targetSqlType);
    }

    @Override
    public void setObject(int parameterIndex, Object theObject, int targetSqlType, int scale) throws SQLException {
        wrappedPS.setObject(parameterIndex, theObject, targetSqlType, scale);
    }

    @Override
    public void setRef(int parameterIndex, Ref theRef) throws SQLException {
        wrappedPS.setRef(parameterIndex, theRef);
    }

    @Override
    public void setShort(int parameterIndex, short theShort) throws SQLException {
        wrappedPS.setShort(parameterIndex, theShort);
        System.out.println("SIMHADB: setShort, index: " + parameterIndex + " value: " + theShort);
        if (IfxConnection.isDuplicateNow()) {
            System.out.println("SIMHADB: dup phase setShort, index: " + parameterIndex + " value: " + theShort);
            collectDataForDuplicateRows(parameterIndex, theShort);
        }
    }

    @Override
    public void setString(int parameterIndex, String theString) throws SQLException {
        wrappedPS.setString(parameterIndex, theString);
        System.out.println("SIMHADB: setString, index: " + parameterIndex + " value: " + theString);
        if (IfxConnection.isDuplicateNow()) {
            System.out.println("SIMHADB: dup phase setString, index: " + parameterIndex + " value: " + theString);
            collectDataForDuplicateRows(parameterIndex, theString);
        }
    }

    @Override
    public void setTime(int parameterIndex, Time theTime) throws SQLException {
        wrappedPS.setTime(parameterIndex, theTime);
    }

    @Override
    public void setTime(int parameterIndex, Time theTime, Calendar cal) throws SQLException {
        wrappedPS.setTime(parameterIndex, theTime, cal);
    }

    @Override
    public void setTimestamp(int parameterIndex, Timestamp theTimestamp) throws SQLException {
        wrappedPS.setTimestamp(parameterIndex, theTimestamp);
    }

    @Override
    public void setTimestamp(int parameterIndex, Timestamp theTimestamp, Calendar cal) throws SQLException {
        wrappedPS.setTimestamp(parameterIndex, theTimestamp, cal);
    }

    @Override
    public void setUnicodeStream(int parameterIndex, InputStream theInputStream, int length) throws SQLException {
        wrappedPS.setUnicodeStream(parameterIndex, theInputStream, length);
    }

    @Override
    public void setURL(int parameterIndex, URL theURL) throws SQLException {
        wrappedPS.setURL(parameterIndex, theURL);
    }

    @Override
    public void setRowId(int parameterIndex, RowId x) throws SQLException {
        wrappedPS.setRowId(parameterIndex, x);
    }

    @Override
    public void setNString(int parameterIndex, String value) throws SQLException {
        wrappedPS.setNString(parameterIndex, value);
    }

    @Override
    public void setNCharacterStream(int parameterIndex, Reader value, long length) throws SQLException {
        wrappedPS.setNCharacterStream(parameterIndex, value, length);
    }

    @Override
    public void setNClob(int parameterIndex, NClob value) throws SQLException {
        wrappedPS.setNClob(parameterIndex, value);
    }

    @Override
    public void setClob(int parameterIndex, Reader reader, long length) throws SQLException {
        wrappedPS.setClob(parameterIndex, reader, length);
    }

    @Override
    public void setBlob(int parameterIndex, InputStream inputStream, long length) throws SQLException {
        wrappedPS.setBlob(parameterIndex, inputStream, length);
    }

    @Override
    public void setNClob(int parameterIndex, Reader reader, long length) throws SQLException {
        wrappedPS.setNClob(parameterIndex, reader, length);
    }

    @Override
    public void setSQLXML(int parameterIndex, SQLXML xmlObject) throws SQLException {
        wrappedPS.setSQLXML(parameterIndex, xmlObject);
    }

    @Override
    public void setAsciiStream(int parameterIndex, InputStream x, long length) throws SQLException {
        wrappedPS.setAsciiStream(parameterIndex, x, length);
    }

    @Override
    public void setBinaryStream(int parameterIndex, InputStream x, long length) throws SQLException {
        wrappedPS.setBinaryStream(parameterIndex, x, length);
    }

    @Override
    public void setCharacterStream(int parameterIndex, Reader reader, long length) throws SQLException {
        wrappedPS.setCharacterStream(parameterIndex, reader, length);
    }

    @Override
    public void setAsciiStream(int parameterIndex, InputStream x) throws SQLException {
        wrappedPS.setAsciiStream(parameterIndex, x);
    }

    @Override
    public void setBinaryStream(int parameterIndex, InputStream x) throws SQLException {
        wrappedPS.setBinaryStream(parameterIndex, x);
    }

    @Override
    public void setCharacterStream(int parameterIndex, Reader reader) throws SQLException {
        wrappedPS.setCharacterStream(parameterIndex, reader);
    }

    @Override
    public void setNCharacterStream(int parameterIndex, Reader value) throws SQLException {
        wrappedPS.setNCharacterStream(parameterIndex, value);
    }

    @Override
    public void setClob(int parameterIndex, Reader reader) throws SQLException {
        wrappedPS.setClob(parameterIndex, reader);
    }

    @Override
    public void setBlob(int parameterIndex, InputStream inputStream) throws SQLException {
        wrappedPS.setBlob(parameterIndex, inputStream);
    }

    @Override
    public void setNClob(int parameterIndex, Reader reader) throws SQLException {
        wrappedPS.setNClob(parameterIndex, reader);
    }

    private void simQueryFailover() throws SQLException {
        if (IfxConnection.isQueryFailoverEnabled() && IfxConnectionPoolDataSource.isTestingFailoverAtRuntime()) {
            System.out.println("SIMHADB: simQueryFailover, failover Enabled, Counter -"
                               + IfxConnection.getQueryFailoverCounter());
            IfxConnection.incrementQueryFailoverCounter();

            if (IfxConnection.getQueryFailoverCounter() == 7) {
                System.out.println("SIMHADB: Feigning executequery/Update failover, rollback on connection");
                IfxConnectionPoolDataSource.setTestingFailoverAtRuntime(false);
                Connection myconn = getConnection();
                try {
                    myconn.rollback();
                    // myconn.close();

                } catch (Exception ex) {
                    System.out.println("SIMHADB: on close connection, caught exc: " + ex);
                }
                String sqlReason = "Generated internally";
                String sqlState = "Generated reason";
                int reasonCode = IfxConnection.getSimSQLCode(); // FOR DB2
                                                                // should be
                                                                // -4498, Oracle
                                                                // 17410
                                                                // if reason code is "-3" then exception is non-transient, otherwise it is transient
                SQLException sqlex;
                if (reasonCode == -3)
                    // A hard, non-recoverable exception
                    sqlex = new SQLException(sqlReason, sqlState, reasonCode);
                else
                    // A transient, recoverable exception
                    sqlex = new SQLTransientException("A simulated transient SQL Exception");
                throw sqlex;
            }
        }
    }

    /*
     * (non-Javadoc)
     *
     * @see java.sql.Statement#closeOnCompletion()
     */
    @Override
    public void closeOnCompletion() throws SQLException {
        // TODO Auto-generated method stub

    }

    /*
     * (non-Javadoc)
     *
     * @see java.sql.Statement#isCloseOnCompletion()
     */
    @Override
    public boolean isCloseOnCompletion() throws SQLException {
        // TODO Auto-generated method stub
        return false;
    }

    public static String toHexString(byte[] byteSource, int bytes) {
        StringBuffer result = null;
        boolean truncated = false;

        if (byteSource != null) {
            if (bytes > byteSource.length) {
                // If the number of bytes to display is larger than the available number of
                // bytes, then reset the number of bytes to display to be the available
                // number of bytes.
                bytes = byteSource.length;
            } else if (bytes < byteSource.length) {
                // If we are displaying less bytes than are available then detect this
                // 'truncation' condition.
                truncated = true;
            }

            result = new StringBuffer(bytes * 2);
            for (int i = 0; i < bytes; i++) {
                result.append(_digits.charAt((byteSource[i] >> 4) & 0xf));
                result.append(_digits.charAt(byteSource[i] & 0xf));
            }

            if (truncated) {
                result.append("... (" + bytes + "/" + byteSource.length + ")");
            } else {
                result.append("(" + bytes + ")");
            }
        } else {
            result = new StringBuffer("null");
        }

        return (result.toString());
    }

    /**
     * Assemble the data that will be duplicated in the database.
     *
     * @param parameterIndex
     * @param theObject
     * @throws SQLException
     */
    private void collectDataForDuplicateRows(int parameterIndex, Object theObject) throws SQLException {
        if (_tranlogInsertFlag) {
            if (!IfxConnection.isDuplicateInfraEnabled()) {
                IfxConnection.enableDuplicateInfra();
                System.out.println("SIMHADB: collectDataForDuplicateRows first time in setting a value, the PS: " + this);
                _columnValues = new ArrayList();
                _duplicateRows = new HashMap();
                _cachedRow = new HashMap();
                _duplicateRows.put(_rowNum, _columnValues);
            }
            if (_columnValues != null) {
                // Cache this value, we may need it later
                _cachedRow.put(parameterIndex, theObject);

                // See if we are handling a new row
                if (parameterIndex < _lastIndexEntry) {
                    _columnValues = new ArrayList();
                    _rowNum++;
                    _duplicateRows.put(_rowNum, _columnValues);

                    // We need to populate a complete row. If we have started processing a new row (parameterIndex < _lastIndexEntry) but
                    // the parameterIndex is greater than 1, then we need to use cached values to complete the row
                    int cachedIndex = 1;
                    while (parameterIndex > cachedIndex) {
                        System.out.println("SIMHADB: collectDataForDuplicateRows at index " + cachedIndex + " add value: " + _cachedRow.get(cachedIndex));
                        _columnValues.add(_cachedRow.get(cachedIndex));
                        cachedIndex++;
                    }
                }

                _columnValues.add(theObject);
                _lastIndexEntry = parameterIndex;
                System.out.println("SIMHADB: collectDataForDuplicateRows has added " + theObject + " to list " + _columnValues);
            }
        }
    }

    /**
     * Insert the duplicate data and crash the VM, so that the server can be restarted and handle the duplicate data.
     *
     * @throws SQLException
     */
    private void duplicateAndHalt() throws SQLException {
        if (_duplicateRows != null) {
            System.out.println("SIMHADB: duplicateAndHalt there are - " + _duplicateRows.size() + " rows to duplicate");
            for (List valueList : _duplicateRows.values()) {
                if (valueList != null) {
                    System.out.println("SIMHADB: duplicateAndHalt list size - " + valueList.size() + " and list " + valueList);
                    ListIterator<Object> listItr = valueList.listIterator();

                    int theIndex = 0;
                    while (listItr.hasNext()) {
                        theIndex++;
                        Object theObj = listItr.next();
                        System.out.println("SIMHADB: duplicateAndHalt, working with object - " + theObj);
                        if (theObj instanceof String) {
                            String theString = (String) theObj;
                            System.out.println("SIMHADB: duplicateAndHalt setString, index: " + theIndex + " value: " + theString);
                            wrappedPS.setString(theIndex, theString);
                        } else if (theObj instanceof Short) {
                            Short theShort = (Short) theObj;
                            System.out.println("SIMHADB: duplicateAndHalt setShort, index: " + theIndex + " value: " + theShort);
                            wrappedPS.setShort(theIndex, theShort);
                        } else if (theObj instanceof Long) {
                            Long theLong = (Long) theObj;
                            System.out.println("SIMHADB: duplicateAndHalt setLong, index: " + theIndex + " value: " + theLong);
                            wrappedPS.setLong(theIndex, theLong);
                        } else if (theObj instanceof byte[]) {
                            byte[] theArray = (byte[]) theObj;
                            String theBytesString = toHexString(theArray, 32);
                            System.out.println("SIMHADB: setBytes, index: " + theIndex + " value: " + theBytesString);
                            wrappedPS.setBytes(theIndex, theArray);
                        }
                    }
                    addBatch();
                    int[] ret = wrappedPS.executeBatch();
                }
            }

            System.out.println("SIMHADB: duplicateAndHalt, now commit");
            Connection myconn = getConnection();
            myconn.commit();
            System.out.println("SIMHADB: duplicateAndHalt, now HALT");
            Runtime.getRuntime().halt(-2000);

        }
    }

    /**
     * Insert the duplicate data and crash the VM, so that the server can be restarted and handle the duplicate data.
     *
     * @throws SQLException
     */
    private void simplyHalt() throws SQLException {
        System.out.println("SIMHADB: Now HALT");
        Runtime.getRuntime().halt(-2000);
    }

    public void setTranlogInsertFlag() {
        _tranlogInsertFlag = true;
    }

}
