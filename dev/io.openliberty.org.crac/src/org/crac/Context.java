package org.crac;

public abstract class Context<R extends Resource> implements Resource {
    protected Context() {}
    public abstract void afterRestore(Context<? extends Resource> context) throws RestoreException;
    public abstract void beforeCheckpoint(Context<? extends Resource> context) throws CheckpointException;
    public abstract void register(R resource);
}
