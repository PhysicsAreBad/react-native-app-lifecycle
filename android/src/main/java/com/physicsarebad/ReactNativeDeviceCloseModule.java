
package com.physicsarebad;

import android.content.Intent;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

import java.util.ArrayList;
import java.util.List;

public class RNReactNativeDeviceCloseModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  protected static final List<Callback> closeCallbacks = new ArrayList<>();

  public RNReactNativeDeviceCloseModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;

    Intent intent = new Intent(reactContext.getApplicationContext(), DestroyService.class);
    reactContext.getApplicationContext().startService(intent);
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