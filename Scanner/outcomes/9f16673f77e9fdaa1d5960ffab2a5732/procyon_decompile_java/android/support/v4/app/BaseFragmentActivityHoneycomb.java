// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.os.Build$VERSION;
import android.util.AttributeSet;
import android.content.Context;
import android.view.View;

abstract class BaseFragmentActivityHoneycomb extends BaseFragmentActivityGingerbread
{
    public View onCreateView(final View view, final String s, final Context context, final AttributeSet set) {
        final View dispatchFragmentsOnCreateView = this.dispatchFragmentsOnCreateView(view, s, context, set);
        if (dispatchFragmentsOnCreateView == null && Build$VERSION.SDK_INT >= 11) {
            return super.onCreateView(view, s, context, set);
        }
        return dispatchFragmentsOnCreateView;
    }
}
