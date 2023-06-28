package org.crac;

import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicReference;

import io.openliberty.checkpoint.spi.CheckpointHook;
import io.openliberty.checkpoint.spi.CheckpointPhase;

public class Core {
    private static final AtomicReference<Context<Resource>> globalContext = new AtomicReference<>();

    public static void checkpointRestore() throws CheckpointException, RestoreException {
        throw new UnsupportedOperationException();
    }

    public static Context<Resource> getGlobalContext() {
        return globalContext.updateAndGet((c) -> c == null ? new GlobalContext() : c);
    }

    static class GlobalContext extends Context<Resource> {

        @Override
        public void afterRestore(Context<? extends Resource> context) throws RestoreException {
            throw new UnsupportedOperationException();
        }

        @Override
        public void beforeCheckpoint(Context<? extends Resource> context) throws CheckpointException {
            throw new UnsupportedOperationException();
        }

        @Override
        public void register(Resource resource) {
            CheckpointPhase phase = CheckpointPhase.getPhase();
            if (phase != CheckpointPhase.INACTIVE) {
                final WeakReference<Resource> ref = new WeakReference<>(resource);
                phase.addMultiThreadedHook(new CheckpointHook() {
                    @Override
                    public void prepare() {
                        try {
                            Resource current = ref.get();
                            if (current != null) {
                                current.beforeCheckpoint(GlobalContext.this);
                            }
                        } catch (Exception e) {
                            // TODO not sure if this causes failure for checkpoint or not
                        }
                    }

                    @Override
                    public void restore() {
                        try {
                            Resource current = ref.get();
                            if (current != null) {
                                current.afterRestore(GlobalContext.this);
                            }
                        } catch (Exception e) {
                            // TODO not sure if this causes failure to restore or not
                        }
                    }
                });
            }
        }

    }
}
