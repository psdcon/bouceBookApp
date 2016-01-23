package com.iamapaulling.paul.bouncebook;

import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;

import java.util.ArrayList;

/**
 * Created by Paul on 21/01/2016.
 */
public class ActivityTariffCalc extends AppCompatActivity {

    private final int numRows = 10;

    // Database Data var
    ArrayList<Skill> allSkills = null;

    // View vars
    TextView[] tariffNumbers = new TextView[numRows];
    Spinner[] tariffSpinners = new Spinner[numRows];
    Toggle3States[] tariffShapes = new Toggle3States[numRows];
    TextView[] tariffScores = new TextView[numRows];
    TextView tariffTotalScore = null;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        setContentView(R.layout.activity_tariff);

        // Get List of names for Spinner. Defined below
        allSkills = Skill.getSkillsFromDatabase(this, "WHERE competition_skill=1");
        allSkills.add(0, new Skill("Select a skill..."));

        // Initialise view vars
        LinearLayout scrollingLayoutContainer = (LinearLayout) findViewById(R.id.scroll_container);
        tariffTotalScore = (TextView) findViewById(R.id.score_total);

        // Create layout
        LayoutInflater inflater = (LayoutInflater) getSystemService(Context.LAYOUT_INFLATER_SERVICE);

        // Spinner adapter
        ArrayAdapter spinnerAdapter = new CustomSpinnerAdapter(this, R.layout.custom_spinner_item, allSkills);
        spinnerAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);

        for (int i = 0; i < numRows; i++) {
            View custom = inflater.inflate(R.layout.activity_tariff_row, scrollingLayoutContainer, false);

            // Populate view arrays
            tariffNumbers[i] = (TextView) custom.findViewById(R.id.item_number);
            tariffSpinners[i] = (Spinner) custom.findViewById(R.id.tariff_skills_spinner);
            tariffShapes[i] = (Toggle3States) custom.findViewById(R.id.shape_toggle);
            tariffScores[i] = (TextView) custom.findViewById(R.id.tariff_score);

            TextView thisNumber = tariffNumbers[i];
            thisNumber.setText(String.format("%d.", i+1));

            // Add onSelect to spinner
            Spinner thisSpinner = tariffSpinners[i];
            thisSpinner.setAdapter(spinnerAdapter);
            thisSpinner.setOnItemSelectedListener(spinnerListener(i));
            thisSpinner.setId(100 + i);

            Toggle3States thisShape = tariffShapes[i];
//            thisShape.setEnabled(false);
            thisShape.setFlashListener(toggleClickListener());
            thisShape.setId(200 + i);

            scrollingLayoutContainer.addView(custom);
        }
    }

    // Update total view with total tariff
    private void calculateTariffTotal() {
        float totalScore = 0;
        for (int i = 0; i < numRows; i++) {
            float thisScore;

            Skill thisSkill = allSkills.get(tariffSpinners[i].getSelectedItemPosition());

            thisScore = thisSkill.tariff;
            // Add on shape bonus
            if (thisSkill.shaped == 1 && tariffShapes[i].getState() > 0){
                thisScore += thisSkill.shapeBonus;
            }

            // Set the TextView text
            tariffScores[i].setText(String.format("%.1f", thisScore));

            totalScore += thisScore;
        }
        tariffTotalScore.setText(String.format("%.1f", totalScore));
    }

    // Spinner Listener
    private AdapterView.OnItemSelectedListener spinnerListener(final int spinnerIndex) {
        return new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {

                Skill thisSkill = allSkills.get(position);

                // Enable shape button for somersault
                if (thisSkill.shaped == 1){
                    tariffShapes[spinnerIndex].setEnabled(true);
                }
                else{
                    tariffShapes[spinnerIndex].setEnabled(false);
                }

                calculateTariffTotal();
            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        };
    }

    private Toggle3States.FlashListener toggleClickListener() {
        return new Toggle3States.FlashListener(){
            @Override
            public void onClick() {
                calculateTariffTotal();
            }
        }  ;
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
