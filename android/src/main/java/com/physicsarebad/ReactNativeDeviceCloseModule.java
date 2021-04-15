
package com.physicsarebad;

import android.content.Intent;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

import java.util.ArrayList;
import java.util.List;

public class ReactNativeDeviceCloseModule extends ReactContextBaseJavaModule {

  protected static final List<Callback> closeCallbacks = new ArrayList<>();

  public ReactNativeDeviceCloseModule(ReactApplicationContext reactContext) {
    super(reactContext);

    Intent emptyActivityIntent = new Intent(reactContext.getApplicationContext(), EmptyActivity.class);
    reactContext.getApplicationContext().startActivity(emptyActivityIntent);
  }

  @Override
  public String getName() {
    return "ReactNativeDeviceClose";
  }

  @ReactMethod
  public void onClose(Callback callback) {
    closeCallbacks.add(callback);
  }

}