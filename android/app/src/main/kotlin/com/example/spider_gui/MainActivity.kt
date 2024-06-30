package com.spider.spider_gui

import android.content.Context
import android.os.Bundle
import android.util.Log
import io.flutter.embedding.android.FlutterActivity
import androidx.security.crypto.MasterKey

class MainActivity: FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        System.loadLibrary("rust_lib_spider_gui")
        var ctx = this.applicationContext
        init_android(ctx)
    }
    
    external fun init_android(ctx: Context)
}
