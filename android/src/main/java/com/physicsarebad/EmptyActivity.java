package com.physicsarebad;

import android.app.Activity;

import com.facebook.react.bridge.Callback;

public class EmptyActivity extends Activity {

    @Override
    protected void onPause() {
        super.onPause();

        for (Callback callback : ReactNativeDeviceCloseModule.closeCallbacks) {
            callback.invoke();
        }
    }
}
