package com.iamapaulling.paul.bouncebook;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import java.util.ArrayList;

/**
 * Created by Paul on 19/04/2015.
 * Based on http://www.edureka.co/blog/custom-spinner-in-android/
 * With help answer two from http://stackoverflow.com/questions/16694786/how-to-customize-a-spinner-in-android
 */
public class CustomSpinnerAdapter extends ArrayAdapter<Skill> {
    private Context context;
    private int resource;
    private ArrayList<Skill> skills;

    public CustomSpinnerAdapter(Context context, int resource, ArrayList<Skill> skills) {
        super(context, resource, skills);
        this.context = context;
        this.resource = resource;
        this.skills  = skills;
    }

    @Override
    public View getDropDownView(int position, View convertView, ViewGroup parent) {
        return getCustomView(position, convertView, parent, true);
    }

    @Override
    public View getView(int pos, View convertView, ViewGroup parent) {
        return getCustomView(pos, convertView, parent, false);
    }

    public View getCustomView(int position, View convertView, ViewGroup parent, boolean showTariffScore) {
        LayoutInflater inflater = (LayoutInflater) context.getSystemService( Context.LAYOUT_INFLATER_SERVICE );
        View mySpinner = inflater.inflate(R.layout.custom_spinner_item, parent, false);

        // Deal with skill name
        View rowLayout = mySpinner.findViewById(R.id.row_layout);
        TextView textMain = (TextView) mySpinner.findViewById(R.id.text_main);
        TextView textSub = (TextView) mySpinner.findViewById(R.id.text_sub);

        textMain.setText(skills.get(position).name);

        // Make "group"
        if(skills.get(position).tariff == -1){
            textMain.setTextSize(14);
            textMain.setTextColor(Color.parseColor("#8A000000"));
            textMain.setAllCaps(true);
            textMain.setPadding(4, textMain.getPaddingTop(), textMain.getPaddingRight(), textMain.getPaddingBottom());
            rowLayout.setBackgroundResource(R.drawable.border_top);
            textSub.setText("");
        }
        else if(position == 0){
            // Do nothing
            textSub.setText("");
        }
        else if(showTariffScore){
            textSub.setText(Float.toString(skills.get(position).tariff));
        }
        else{
            textSub.setText("");
        }

        return mySpinner;
    }

    @Override
    public boolean isEnabled(int position) {
//        return super.isEnabled(position);
        if(skills.get(position).tariff == -1){
            return false;
        }
        return true;
    }
}
