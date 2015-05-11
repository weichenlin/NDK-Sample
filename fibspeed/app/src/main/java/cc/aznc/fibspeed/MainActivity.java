package cc.aznc.fibspeed;

import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;


public class MainActivity extends ActionBarActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        long startTime, elapsedTime;
        int n = 35;

        startTime = System.currentTimeMillis();
        Fibonacci.fib(n);
        elapsedTime = System.currentTimeMillis() - startTime;
        Log.i("Main", "java taken " + elapsedTime + "ms");

        startTime = System.currentTimeMillis();
        Fibonacci.fibNative(n);
        elapsedTime = System.currentTimeMillis() - startTime;
        Log.i("Main", "native taken " + elapsedTime + "ms");
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }
}
