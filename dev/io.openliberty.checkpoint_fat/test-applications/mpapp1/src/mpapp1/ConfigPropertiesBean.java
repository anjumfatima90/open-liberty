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
package mpapp1;

import static org.junit.Assert.assertEquals;

import javax.enterprise.context.Dependent;
import javax.enterprise.context.Initialized;
import javax.enterprise.event.Observes;

import org.eclipse.microprofile.config.inject.ConfigProperties;
import org.eclipse.microprofile.config.inject.ConfigProperty;

import jakarta.enterprise.context.ApplicationScoped;

@ApplicationScoped
@ConfigProperties(prefix = "checkpoint")
@Dependent
public class ConfigPropertiesBean {

    String config_properties_key1;

    @ConfigProperty(name = "config_properties_key2", defaultValue = "defaultValue")
    String config_properties_key2;

    public void observeInit(@Observes @Initialized(ApplicationScoped.class) Object event) {
        System.out.println(getClass() + ": " + "Initializing application context");
        check("defaultValue");
    }

    public void configPropertiesDefaultValueTest() {
        check("defaultValue");
    }

    public void configPropertiesEnvValueTest() {
        check("envValue");
    }

    public void configPropertiesEnvValueChangeTest() {
        check("envValueChange");
    }

    public void configPropertiesServerValueTest() {
        check("serverValue");
    }

    private void check(String expected) {
        assertEquals("Wrong value for config_properties_key1.", expected, config_properties_key1);
        assertEquals("Wrong value for config_properties_key2.", expected, config_properties_key2);
    }
}
