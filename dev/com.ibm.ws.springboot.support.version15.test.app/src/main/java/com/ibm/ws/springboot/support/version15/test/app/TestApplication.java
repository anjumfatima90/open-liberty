/*******************************************************************************
 * Copyright (c) 2018 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package com.ibm.ws.springboot.support.version15.test.app;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class TestApplication {
	public static final String TEST_ATTR = "test.weblistener.attr";
	@Autowired
	ServletContext context; 
	public static void main(String[] args) {
		SpringApplication.run(TestApplication.class, args);
	}

	@RequestMapping("/")
	public String hello() {
		return "HELLO SPRING BOOT!!";
	}

	@RequestMapping(value="/buttonClicked", produces="text/html")
	public String click() {
		return "Hello. You clicked a button.";
	}

	@RequestMapping("/testWebListenerAttr")
	public String testWebListenerAttr() {
		// should be null
		Object result = context.getAttribute(TEST_ATTR);
		if (result == null) {
			return "PASSED";
		} else {
			return "FAILED";
		}
	}
	
	static final String 
			IbmApiClazzName = "com.ibm.websphere.application.ApplicationMBean",
			TpClazzName 	= "javax.mail.Message";

	@RequestMapping("/loadIbmApiClass")
	public String loadApiClass() { return loadClazz(IbmApiClazzName); }

	@RequestMapping("/loadTpClass")
	public String loadTpClass() { return loadClazz(TpClazzName); }

	String loadClazz(String clazzName) {
		Class clazz = null;
		try {
			clazz = this.getClass().getClassLoader().loadClass(clazzName);
		} catch (Exception e) {
			e.printStackTrace(System.out);
		} finally {
			return "SPRING BOOT, YOU GOT" + ((null==clazz) ? " NO " : " ") + "CLAZZ: " + clazzName;
		}
	}

}
