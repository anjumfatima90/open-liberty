/*******************************************************************************
 * Copyright (c) 2014, 2021 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package com.ibm.ejbcontainer.interceptor.v32.aroundconstruct.ejb;

import javax.ejb.Stateless;
import javax.interceptor.Interceptors;

@Stateless
@Interceptors(AroundConstructInterceptorCatchException.class)
public class TestCaughtExceptionErrorBeanCtor implements MyLocalInterface {

    public TestCaughtExceptionErrorBeanCtor() throws TestException {
        throw new TestException();
    }

    @Override
    public void method() {}

}
