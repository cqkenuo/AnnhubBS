// 
// Decompiled by Procyon v0.5.30
// 

package okio;

import java.io.Closeable;

public interface Source extends Closeable
{
    void close();
    
    long read(final Buffer p0, final long p1);
    
    Timeout timeout();
}
