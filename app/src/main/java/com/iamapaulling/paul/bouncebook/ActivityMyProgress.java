package com.iamapaulling.paul.bouncebook;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

/**
 * Created by Paul on 21/01/2016.
 */
public class ActivityMyProgress extends AppCompatActivity{
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getSupportActionBar().setHomeButtonEnabled(true);
        setContentView(R.layout.activity_my_progress);
    }
}
