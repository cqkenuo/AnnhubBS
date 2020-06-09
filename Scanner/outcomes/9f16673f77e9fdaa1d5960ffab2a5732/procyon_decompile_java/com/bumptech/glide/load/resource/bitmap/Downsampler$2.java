// 
// Decompiled by Procyon v0.5.30
// 

package com.bumptech.glide.load.resource.bitmap;

import java.io.InputStream;
import android.graphics.Bitmap;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;

final class Downsampler$2 extends Downsampler
{
    public String getId() {
        return "AT_MOST.com.bumptech.glide.load.data.bitmap";
    }
    
    protected int getSampleSize(final int n, final int n2, final int n3, final int n4) {
        final int n5 = (int)Math.ceil(Math.max(n2 / n4, n / n3));
        final int highestOneBit = Integer.highestOneBit(n5);
        int n6 = 1;
        final int max = Math.max(n6, highestOneBit);
        if (max >= n5) {
            n6 = 0;
        }
        return max << n6;
    }
}
