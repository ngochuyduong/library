package com.awesomelibrary3;

import android.view.View;

import androidx.annotation.Nullable;

import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ViewManagerDelegate;
import com.facebook.react.viewmanagers.AwesomeLibrary3ViewManagerDelegate;
import com.facebook.react.viewmanagers.AwesomeLibrary3ViewManagerInterface;
import com.facebook.soloader.SoLoader;

public abstract class AwesomeLibrary3ViewManagerSpec<T extends View> extends SimpleViewManager<T> implements AwesomeLibrary3ViewManagerInterface<T> {
  static {
    if (BuildConfig.CODEGEN_MODULE_REGISTRATION != null) {
      SoLoader.loadLibrary(BuildConfig.CODEGEN_MODULE_REGISTRATION);
    }
  }

  private final ViewManagerDelegate<T> mDelegate;

  public AwesomeLibrary3ViewManagerSpec() {
    mDelegate = new AwesomeLibrary3ViewManagerDelegate(this);
  }

  @Nullable
  @Override
  protected ViewManagerDelegate<T> getDelegate() {
    return mDelegate;
  }
}
