package com.iamapaulling.paul.bouncebook;

import android.app.ActivityOptions;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import java.util.ArrayList;

/**
 * Created by Paul on 21/01/2016.
 */
public class ActivitySkillsList extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getSupportActionBar().setHomeButtonEnabled(true);
        setContentView(R.layout.activity_skills_list);

        // Get all skill names from db
        final ArrayList<Skill> allSkills = Skill.getSkillsFromDatabase(this, "");

        // Put skill names in a list view
        ArrayAdapter listAdapter = new CustomListAdapter(this, R.layout.custom_list_item, allSkills);

        // ListViews display data in a scrollable list
        ListView skillsListView = (ListView) findViewById(R.id.skillsListView);

        // Tells the ListView what data to use
        skillsListView.setAdapter(listAdapter);
        skillsListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int skillIndex, long l) {

                // Open new activity!
                Intent skillViewIntent = new Intent(ActivitySkillsList.this, ActivitySkillDetails.class);

                // Set up animation
                Bundle translateBundle = ActivityOptions.makeCustomAnimation(ActivitySkillsList.this,
                        R.anim.slide_in_left, R.anim.slide_out_left).toBundle();

                // Tell the activity which skill it's opening
                int skillId = allSkills.get(skillIndex).id;
                skillViewIntent.putExtra("skillDatabaseId", skillId);

                // Start the activity
                startActivity(skillViewIntent, translateBundle);
            }
        });
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            // Respond to the action bar's Up/Home button
            case android.R.id.home:
                this.finish();
                return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.slide_in_right, R.anim.slide_out_right);
    }

}
