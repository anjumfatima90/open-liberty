package org.crac;

public interface Resource {
    void afterRestore(Context<? extends Resource> context) throws Exception;
    void beforeCheckpoint(Context<? extends Resource> context) throws Exception;
}

