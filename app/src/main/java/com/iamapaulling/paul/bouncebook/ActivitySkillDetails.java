package com.iamapaulling.paul.bouncebook;

import android.content.ContentValues;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.MenuItem;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;

/**
 * Created by Paul on 15/04/2015.
 */
public class ActivitySkillDetails extends ActionBarActivity {
    String skillDatabaseIdStr;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        setContentView(R.layout.activity_skill_details);

        // Get the index of the skill selected
        Intent mIntent = getIntent();
        int skillDatabaseId = mIntent.getIntExtra("skillDatabaseId", -1);
        skillDatabaseIdStr = Integer.toString(skillDatabaseId);

        // Get the data for this skill
        Skill thisSkill = Skill.getSkillById(this, skillDatabaseIdStr);

        // Set the title as the skills name in the top left corner
        setTitle(thisSkill.name);

        // Display the info in the view
        TextView nameTextView = (TextView) findViewById(R.id.skill_view_name);
        nameTextView.setText(thisSkill.name);

        final TextView catTextView = (TextView) findViewById(R.id.skill_view_cat);
        catTextView.setText(thisSkill.level);

        TextView figTextView = (TextView) findViewById(R.id.skill_view_fig);
        figTextView.setText(thisSkill.figNotation);

        TextView tariffTextView = (TextView) findViewById(R.id.skill_view_tariff);
        tariffTextView.setText(String.format("%.1f",thisSkill.tariff));

        TextView descTextView = (TextView) findViewById(R.id.skill_view_desc);
        if (thisSkill.description == "") {
            descTextView.setText("No description for detroit");
        } else {
            descTextView.setText(thisSkill.description);
        }


        // Star skill
        final CheckBox starBtn = (CheckBox) findViewById(R.id.star);
        starBtn.setChecked(thisSkill.starred == 1);
        starBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                ContentValues cv = new ContentValues();
                cv.put("starred", (starBtn.isChecked())?1:0);
                SQLiteDatabase skillsDatabase = SkillsDatabaseHelper.getInstance(ActivitySkillDetails.this).getWritableDatabase();
                skillsDatabase.update("tariff_skills", cv, "id="+skillDatabaseIdStr, null);
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
