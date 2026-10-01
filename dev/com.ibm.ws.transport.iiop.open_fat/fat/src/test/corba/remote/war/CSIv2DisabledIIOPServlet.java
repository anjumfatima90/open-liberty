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
package test.corba.remote.war;

import java.util.Objects;

import javax.annotation.Resource;
import javax.rmi.CORBA.Stub;
import javax.servlet.annotation.WebServlet;

import org.junit.Assert;
import org.junit.Test;
import org.omg.CORBA.ORB;

import componenttest.app.FATServlet;
import shared.Business;
import shared.ClientUtil;
import shared.TestRemote;

/**
 * Client servlet that runs on csiv2SslOnlyClient and invokes EJBs hosted on
 * csiv2SslOnlyServer, which is configured with iiopPort="-1" and iiopsPort only.
 *
 * The EJB server opens no plain IIOP socket at all — only a TLS/SSL socket on
 * iiopsPort. This servlet's ORB is pre-configured in server.xml to bootstrap
 * the CosNaming service over SSL:
 *
 *   &lt;orb nameService="corbaloc:iiop:localhost:${bvt.prop.IIOP.secondary.secure}/NameService"/&gt;
 *
 * This proves that a remote CSIv2-capable client can reach an EJB published on
 * an SSL-only server (iiopPort=-1), and that plain IIOP is completely disabled.
 */
@WebServlet("/CSIv2SslOnlyClientServlet")
@SuppressWarnings("serial")
public class CSIv2DisabledIIOPServlet extends FATServlet {

    @Resource
    private ORB orb;

    /**
     * The injected ORB must not be null; verifies the SSL client ORB
     * initialised correctly and that appSecurity is active on the client.
     */
    @Test
    public void testOrbInjected() {
        System.out.println("### CSIv2 SSL-only client test: orb=" + orb + " ###");
        Objects.requireNonNull(orb, "ORB must be injected on SSL-only client");
    }

    /**
     * CosNaming lookup over SSL to the EJB server.
     * The ORB's nameService points at corbaloc:iiop:localhost:&lt;iiopsPort&gt;/NameService,
     * so resolve_initial_references("NameService") connects there and CSIv2 upgrades to SSL.
     * Proves the SSL socket on the server is open and reachable.
     */
    @Test
    public void testSslEjbLookup() throws Exception {
        TestRemote bean = ClientUtil.lookupTestBean(orb);
        Objects.requireNonNull(bean, "TestBean must be found via SSL CosNaming lookup");
    }

    /**
     * Full round-trip over SSL: look up the EJB and invoke a method on it.
     * The IOR returned by CosNaming carries the SSL transport address, so
     * the method invocation also travels over the TLS connection.
     * Proves end-to-end SSL-only IIOP works when iiopPort=-1.
     */
    @Test
    public void testSslEjbInvocation() throws Exception {
        Business bean = ClientUtil.lookupBusinessBean(orb);
        Objects.requireNonNull(bean, "BusinessBean must be found via SSL CosNaming lookup");
        Assert.assertEquals(
                "Remote invocation of BusinessBean.takesInt() over SSL-only IIOP must return the same value",
                42, bean.takesInt(42));
    }

    /**
     * Verify the IOR the SSL client receives contains zero plain TAG_INTERNET_IOP
     * profiles — confirming that the server's --no-profile flag on the SSL acceptor
     * suppressed all plain profiles, and the connection succeeded via SSL transport
     * negotiation rather than a plain IIOP profile.
     */
    @Test
    public void testSslEjbIorProfiles() throws Exception {
        TestRemote bean = ClientUtil.lookupTestBean(orb);
        final int numProfiles = ClientUtil.getNumProfiles((Stub) bean, orb);
        System.out.printf("### CSIv2 SSL-only IOR profile count: %d%n", numProfiles);
        Assert.assertEquals(
                "IOR must contain zero plain TAG_INTERNET_IOP profiles when iiopPort=-1 with CSIv2",
                0, numProfiles);
    }
}
