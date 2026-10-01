/*
 * Copyright (c) 2024 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License 2.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-2.0/
 *
 * SPDX-License-Identifier: EPL-2.0
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 */
package com.ibm.ws.transport.iiop;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

import com.ibm.websphere.simplicity.ShrinkHelper;

import componenttest.annotation.Server;
import componenttest.annotation.TestServlet;
import componenttest.custom.junit.runner.FATRunner;
import componenttest.topology.impl.LibertyServer;
import componenttest.topology.utils.FATServletClient;
import test.corba.remote.war.CSIv2DisabledIIOPServlet;

/**
 * Two-server test proving that a CSIv2-capable SSL client on a separate Liberty
 * server can look up and invoke an EJB hosted on a server configured with
 * iiopPort="-1" (plain IIOP disabled) and iiopsPort only (SSL-only IIOP).
 *
 * <p>The EJB server (csiv2SslOnlyServer) opens only a single TLS socket on
 * iiopsPort and publishes zero plain TAG_INTERNET_IOP profiles in the IOR.
 * The client server (csiv2SslOnlyClient) is configured with appSecurity and
 * a shared keystore so it can negotiate SSL with the server's acceptor.
 *
 * <p>This is the real production use case for iiopPort="-1": force all IIOP
 * traffic through SSL, completely disabling unencrypted plain IIOP.
 */
@RunWith(FATRunner.class)
public class CSIv2DisabledIIOPPortTest extends FATServletClient {

    /** EJB server: iiopPort=-1, SSL-only on iiopsPort=IIOP.secondary.secure (2820) */
    @Server("csiv2DisabledIIOPServer")
    public static LibertyServer ejbServer;

    /** Client server: SSL client ORB, nameService pointing at server's iiopsPort */
    @Server("csiv2DisabledIIOPClient")
    @TestServlet(servlet = CSIv2DisabledIIOPServlet.class, contextRoot = "test.corba.remote")
    public static LibertyServer clientServer;

    @BeforeClass
    public static void beforeClass() throws Exception {
        // Deploy the EJB app to the SSL-only server
        ShrinkHelper.exportDropinAppToServer(ejbServer, FATSuite.TEST_CORBA_EAR);
        ejbServer.startServer();

        // Deploy the client WAR and start the client server
        // (no port injection needed: the iiopsPort is fixed and known at config time)
        ShrinkHelper.exportDropinAppToServer(clientServer, FATSuite.TEST_CORBA_REMOTE_WAR);
        clientServer.startServer();
    }

    @AfterClass
    public static void afterClass() throws Exception {
        clientServer.stopServer();
        ejbServer.stopServer();
    }
}
