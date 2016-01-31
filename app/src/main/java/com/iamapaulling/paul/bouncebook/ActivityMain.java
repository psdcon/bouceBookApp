package com.iamapaulling.paul.bouncebook;

import android.app.ActivityOptions;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;

public class ActivityMain extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    // Click handlers set in the xml
    public void onAllSkillsClick(View view) {
        Intent listActivityIntent = new Intent(ActivityMain.this, ActivitySkillsList.class);
//        Bundle translateBundle = ActivityOptions.makeCustomAnimation(ActivityMain.this,
//                R.anim.slide_in_left, R.anim.slide_out_left).toBundle();
        Bundle translateBundle = ActivityOptions.makeScaleUpAnimation(view, (int) (view.getWidth() * 0.25), (int) (view.getHeight() * 0.5),
                view.getWidth(), view.getHeight()).toBundle();
        startActivity(listActivityIntent, translateBundle);
    }

    public void onMyProgressClick(View view) {
        Intent tariffActivityIntent = new Intent(ActivityMain.this, ActivityMyProgress.class);
        Bundle translateBundle = ActivityOptions.makeScaleUpAnimation(view, (int)(-view.getWidth()*0.25), (int)(view.getHeight()*0.5),
                view.getWidth(), view.getHeight()).toBundle();
        startActivity(tariffActivityIntent, translateBundle);
    }

    public void onSkillTreeClick(View view) {
    }

    public void onTariffClick(View view) {
        Intent tariffActivityIntent = new Intent(ActivityMain.this, ActivityTariffCalc.class);
        Bundle translateBundle = ActivityOptions.makeScaleUpAnimation(view, (int)(-view.getWidth()*0.25), (int)(view.getHeight()*0.5),
                view.getWidth(), view.getHeight()).toBundle();
        startActivity(tariffActivityIntent, translateBundle);
    }

    public void onMscClick(View view) {
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
