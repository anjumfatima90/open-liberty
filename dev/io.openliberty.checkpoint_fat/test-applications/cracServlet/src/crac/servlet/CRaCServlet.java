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
package crac.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.crac.Context;
import org.crac.Core;
import org.crac.Resource;
import org.junit.Test;

import componenttest.app.FATServlet;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/crac-test", loadOnStartup = 1)
public class CRaCServlet extends FATServlet implements Resource {
    @Override
    public void init(ServletConfig config) throws ServletException {
        Core.getGlobalContext().register(this);
    }

    @Test
    public void testCRaC(HttpServletRequest request, HttpServletResponse resp) throws Exception {
        resp.getWriter().println("Running test method 'testCRaC'");
    }

    @Override
    public void beforeCheckpoint(Context<? extends Resource> context) throws Exception {
        System.out.println("TESTING - beforeCheckpoint");
    }

    @Override
    public void afterRestore(Context<? extends Resource> context) throws Exception {
        System.out.println("TESTING - afterRestore");
    }
}
