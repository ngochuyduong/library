package com.awesomelibrary3;

import android.graphics.Color;

import androidx.annotation.Nullable;

import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;

@ReactModule(name = AwesomeLibrary3ViewManager.NAME)
public class AwesomeLibrary3ViewManager extends AwesomeLibrary3ViewManagerSpec<AwesomeLibrary3View> {

  public static final String NAME = "AwesomeLibrary3View";

  @Override
  public String getName() {
    return NAME;
  }

  @Override
  public AwesomeLibrary3View createViewInstance(ThemedReactContext context) {
    return new AwesomeLibrary3View(context);
  }

  @Override
  @ReactProp(name = "color")
  public void setColor(AwesomeLibrary3View view, @Nullable String color) {
    view.setBackgroundColor(Color.parseColor(color));
  }
}
