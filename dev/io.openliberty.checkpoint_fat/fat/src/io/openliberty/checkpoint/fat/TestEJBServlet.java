/*******************************************************************************
 * Copyright (c) 2022 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package io.openliberty.checkpoint.fat;

import org.jboss.shrinkwrap.api.ShrinkWrap;
import org.jboss.shrinkwrap.api.spec.EnterpriseArchive;
import org.jboss.shrinkwrap.api.spec.JavaArchive;
import org.jboss.shrinkwrap.api.spec.WebArchive;
import org.junit.After;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;

import com.ibm.websphere.simplicity.ShrinkHelper;
import com.ibm.websphere.simplicity.ShrinkHelper.DeployOptions;

import componenttest.annotation.Server;
import componenttest.annotation.SkipIfCheckpointNotSupported;
import componenttest.annotation.TestServlet;
import componenttest.custom.junit.runner.FATRunner;
import componenttest.topology.impl.LibertyServer;
import componenttest.topology.utils.FATServletClient;
import componenttest.topology.utils.HttpUtils;
import io.openliberty.checkpoint.spi.CheckpointPhase;
import test.ejb.web.EJBServlet;

@RunWith(FATRunner.class)
@SkipIfCheckpointNotSupported
public class TestEJBServlet extends FATServletClient {

    public static final String APP_NAME = "TestEJBWeb";

    @Server("EJBServer")
    @TestServlet(servlet = EJBServlet.class, contextRoot = "TestEJBWeb")
    public static LibertyServer server;

    @BeforeClass
    public static void copyAppToDropins() throws Exception {

        JavaArchive TestEJBBean = ShrinkHelper.buildJavaArchive("TestEJBBean.jar", "test.ejb.bean.");
        WebArchive TestEJBWeb = ShrinkHelper.buildDefaultApp("TestEJBWeb.war", "test.ejb.web.");

        EnterpriseArchive TestEJBApp = ShrinkWrap.create(EnterpriseArchive.class, "TestEJBApp.ear");
        TestEJBApp.addAsModule(TestEJBBean).addAsModule(TestEJBWeb);

        ShrinkHelper.exportDropinAppToServer(server, TestEJBApp, DeployOptions.SERVER_ONLY);
    }

    @After
    public void tearDown() throws Exception {
        server.stopServer();
    }

    @Test
    public void testEJBServlet() throws Exception {
        server.setCheckpoint(CheckpointPhase.APPLICATIONS, false, null);
        server.startServer();
        server.checkpointRestore();

        HttpUtils.findStringInUrl(server, "TestEJBWeb/EJBServlet", "Hello from EJB!!");
    }

}
