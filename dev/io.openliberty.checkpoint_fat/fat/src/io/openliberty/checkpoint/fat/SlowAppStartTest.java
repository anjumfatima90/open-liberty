/*******************************************************************************
 * Copyright (c) 2017, 2023 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License 2.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-2.0/
 *
 * SPDX-License-Identifier: EPL-2.0
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package io.openliberty.checkpoint.fat;

import static io.openliberty.checkpoint.fat.FATSuite.getTestMethod;
import static io.openliberty.checkpoint.fat.FATSuite.getTestMethodNameOnly;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import org.junit.After;
import org.junit.Before;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.TestName;
import org.junit.runner.RunWith;

import com.ibm.websphere.simplicity.ProgramOutput;
import com.ibm.websphere.simplicity.ShrinkHelper;
import com.ibm.websphere.simplicity.ShrinkHelper.DeployOptions;
import com.ibm.websphere.simplicity.log.Log;

import componenttest.annotation.CheckpointTest;
import componenttest.annotation.ExpectedFFDC;
import componenttest.annotation.Server;
import componenttest.custom.junit.runner.FATRunner;
import componenttest.topology.impl.LibertyServer;
import componenttest.topology.impl.LibertyServer.CheckpointInfo;
import componenttest.topology.utils.HttpUtils;
import io.openliberty.checkpoint.spi.CheckpointPhase;

@RunWith(FATRunner.class)
@CheckpointTest
public class SlowAppStartTest {
    public static final String TEST_INIT_SLEEPING = "TEST - Slow app init sleeping";
    public static final String TEST_INIT_DONE = "TEST - Slow app init done sleeping";
    @Rule
    public TestName testName = new TestName();
    public static final String APP_NAME = "startupcode";

    @Server("slowStartAppServer")
    public static LibertyServer server;

    private TestMethod testMethod;

    @Before
    public void setup() throws Exception {
        testMethod = getTestMethod(TestMethod.class, testName);
        //ShrinkHelper.defaultApp(server, APP_NAME, new DeployOptions[] { DeployOptions.OVERWRITE }, "startupcode1");
        server.setConsoleLogName(getTestMethodNameOnly(testName));

        switch (testMethod) {
            case testBeforeAppStartForSlowStartServer:
            case testAfterAppStartForSlowStartServer:
                ShrinkHelper.defaultApp(server, APP_NAME, new DeployOptions[] { DeployOptions.OVERWRITE }, "startupcode1");
                break;
            case testAfterAppStart:
                ShrinkHelper.defaultApp(server, APP_NAME, new DeployOptions[] { DeployOptions.OVERWRITE }, "startupcode2");
                break;
            default:
                Log.info(getClass(), testName.getMethodName(), "No configuration required: " + testMethod);
                break;
        }
//        //FATSuite.copyAppsAppToDropins(server, APP_NAME);

//        Package pkg = SlowAppServletA.class.getPackage();
//        WebArchive app = ShrinkWrap.create(WebArchive.class, APP_NAME + ".war")
//                        .addClass(SlowAppServletA.class)
//                        .addPackages(true, pkg);
//        System.out.println("APP CONTENT" + app.getContent());
//        ShrinkHelper.exportAppToServer(server, app, DeployOptions.OVERWRITE);
    }

    @Test
    public void testBeforeAppStartForSlowStartServer() throws Exception {
        server.setCheckpoint(new CheckpointInfo(CheckpointPhase.BEFORE_APP_START, false, null));
        server.startServer();
        String initSleeping = server.waitForStringInLogUsingMark(TEST_INIT_SLEEPING, 100);
        assertNull("Unexpected message.", initSleeping);

        server.checkpointRestore();
        String initDone = server.waitForStringInLogUsingMark(TEST_INIT_DONE, 25000);
        assertNotNull("No message found: " + TEST_INIT_DONE, initDone);
        HttpUtils.findStringInUrl(server, "startupcode/request", "TEST - Slow start servlet");
    }

    @Test
    @ExpectedFFDC("io.openliberty.checkpoint.internal.criu.CheckpointFailedException")
    public void testAfterAppStartForSlowStartServer() throws Exception {
        server.setCheckpoint(new CheckpointInfo(CheckpointPhase.AFTER_APP_START, false, true, true, null));
        ProgramOutput checkpointOutput = server.startServer();
        int retureCode = checkpointOutput.getReturnCode();
        assertEquals("Wrong return code for failed checkpoint.", 72, retureCode);
        String initSleeping = server.waitForStringInLogUsingMark(TEST_INIT_SLEEPING, 100);
        assertNotNull("No message found: " + TEST_INIT_SLEEPING, initSleeping);
        //The application start timeout in the server.xml is 10 secs but the runtime multiplies it three times so we should see "Application startupcode has not started in 30.000 seconds" in the logs since the application sleeps for 40 secs during startup.
        assertNotNull("No error message found - CWWKC0453E", server.waitForStringInLogUsingMark("CWWKC0453E.*CWWKC0457E.*CWWKZ0022W", 100));
    }

    @Test
    public void testAfterAppStart() throws Exception {
        server.setCheckpoint(new CheckpointInfo(CheckpointPhase.AFTER_APP_START, false, null));
        server.startServer();
        //String initSleeping = server.waitForStringInLogUsingMark(TEST_INIT_SLEEPING, 100);
        //assertNull("Unexpected message.", initSleeping);
        server.checkpointRestore();
        //String initDone = server.waitForStringInLogUsingMark(TEST_INIT_DONE, 15000);
        //assertNotNull("No message found: " + TEST_INIT_DONE, initDone);
        HttpUtils.findStringInUrl(server, "startupcode/request", "TEST - Slow start servlet");
    }

//    @Before
//    public void setConsoleLogName() {
//        server.setConsoleLogName(getTestMethodNameOnly(testName));
//    }

    @After
    public void tearDown() throws Exception {
        server.stopServer();
    }

    static enum TestMethod {
        testBeforeAppStartForSlowStartServer,
        testAfterAppStartForSlowStartServer,
        testAfterAppStart,
        unknown
    }

}
