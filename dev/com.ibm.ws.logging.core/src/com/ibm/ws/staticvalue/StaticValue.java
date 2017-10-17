/*******************************************************************************
 * Copyright (c) 2017 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package com.ibm.ws.staticvalue;

import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

import com.ibm.ws.ffdc.annotation.FFDCIgnore;

public abstract class StaticValue<T> {
    private static AtomicBoolean multiplex = new AtomicBoolean();

    @FFDCIgnore(Exception.class)
    public static <T> StaticValue<T> createStaticValue(Callable<T> initializer) {
        if (multiplex.get()) {
            return new Multiplexed<T>(initializer);
        }
        try {
            return new FinalSingleton<T>(initializer.call());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static <T> StaticValue<T> mutateStaticValue(StaticValue<T> staticValue, Callable<T> initializer) {
    	if (multiplex.get()) {
    		// Multiplexing case; must check for existing StaticValue
    		if (staticValue == null) {
    			// no existing value; create new one with no constructor initializer
    			staticValue = StaticValue.createStaticValue(null);
    		}
    		// initialize this thread only with the initializer
    		staticValue.computeIfAbsent(initializer);
    		return staticValue;
    	}
    	// Final singleton case; just create a new StaticValue
    	return StaticValue.createStaticValue(initializer);
    }

    public static void setMultiplex() {
        multiplex.set(true);
    }

    static class Multiplexed<T> extends StaticValue<T> {
        static class GroupHolder<T> {
            final T t;
            final Callable<T> initializer;

            GroupHolder(T t, Callable<T> initializer) {
                this.t = t;
                this.initializer = initializer;
            }
        }

        private final Map<ThreadGroup, GroupHolder<T>> threadGroups = new WeakHashMap<>();
        private final Callable<T> constructorInitializer;
        private GroupHolder<T> singleton;

        Multiplexed(Callable<T> initializer) {
            this.constructorInitializer = initializer;
        }

        @Override
        public T computeIfAbsent(Callable<T> initializer) {
            ThreadGroup g = getThreadGroup();
            if (g == null) {
                return getOrInitSingleton(initializer);
            }
            return getOrInitGroup(g, initializer);
        }

        @Override
        public T get() {
            ThreadGroup g = getThreadGroup();
            GroupHolder<T> result;
            boolean compute = false;
            synchronized (this) {
                result = g == null ? singleton : threadGroups.get(g);
                if (result == null) {
                    if (constructorInitializer != null) {
                        compute = true;
                    } else {
                        return null;
                    }
                }
            }
            return compute ? computeIfAbsent(constructorInitializer) : result.t;
        }

        @Override
        public void clear(T val) {
            ThreadGroup g = getThreadGroup();
            synchronized (this) {
                if (threadGroups.get(g) == val) {
                    threadGroups.remove(g);
                }
                if (singleton != null && singleton.t == val) {
                    singleton = null;
                }
            }
        }

        private T getOrInitSingleton(Callable<T> initializer) {
            // Note that we simply override the singleton each time to get the latest
            try {
                synchronized (this) {
                    if (singleton != null && singleton.initializer == initializer) {
                        return singleton.t;
                    }
                }
                T val = initializer.call();
                synchronized (this) {
                    // check to make sure this initializer was not used by another thread
                    if (singleton != null && singleton.initializer == initializer) {
                        // another thread won with the same initializer
                        return singleton.t;
                    }
                    singleton = new GroupHolder<>(val, initializer);
                    return singleton.t;
                }
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        private T getOrInitGroup(ThreadGroup g, Callable<T> initializer) {
            synchronized (this) {
                GroupHolder<T> result = threadGroups.get(g);
                if (result != null && result.initializer == initializer) {
                    return result.t;
                }
            }

            try {
                T val = initializer.call();
                synchronized (this) {
                    // check to make sure this initializer was not used by another thread
                    GroupHolder<T> result = threadGroups.get(g);
                    if (result != null && result.initializer == initializer) {
                        // another thread won with the same initializer
                        return result.t;
                    }
                    // note the last initializer called wins
                    result = new GroupHolder<>(val, initializer);
                    threadGroups.put(g, result);
                    // note that we overide singleton each time to keep it the latest
                    singleton = result;
                    return result.t;
                }
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    static class FinalSingleton<T> extends StaticValue<T> {
        private final T singleton;

        FinalSingleton(T initial) {
            this.singleton = initial;
        }

        @Override
        public void clear(T val) {
            // TODO throw exception?
        }

        @Override
        public T computeIfAbsent(Callable<T> initializer) {
            return singleton;
        }

        @Override
        public T get() {
            return singleton;
        }
    }

    static ThreadGroup getThreadGroup() {
        ThreadGroup g = Thread.currentThread().getThreadGroup();
        while (g != null && (g.getName() == null || !g.getName().startsWith("osgi-boot-"))) {
            g = g.getParent();
        }
        return g;
    }

    public abstract void clear(T val);

    public abstract T computeIfAbsent(Callable<T> initializer);

    public abstract T get();
}
