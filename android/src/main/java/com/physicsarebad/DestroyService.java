package com.physicsarebad;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

import com.facebook.react.bridge.Callback;

public class DestroyService extends Service {
    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onTaskRemoved(Intent rootIntent) {
        for (Callback callback : ReactNativeDeviceCloseModule.closeCallbacks) {
            callback.invoke();
        }
    }
}
