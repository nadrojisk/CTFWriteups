package com.tamu.ctf.hidden;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import io.michaelrocks.paranoid.Deobfuscator.app.Debug;

public class MainActivity extends AppCompatActivity {

    /* renamed from: com.tamu.ctf.hidden.MainActivity$1 */
    class C00111 extends BroadcastReceiver {
        C00111() {
        }

        public void onReceive(Context context, Intent intent) {
            Log.d(MainActivity.this.getString(C0012R.string.flag), Debug.getString(0));
        }
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(C0012R.layout.activity_main);
        BroadcastReceiver hidden = new C00111();
        IntentFilter filter = new IntentFilter();
        filter.addAction(getString(C0012R.string.hidden_action));
        LocalBroadcastManager.getInstance(this).registerReceiver(hidden, filter);
    }
}
