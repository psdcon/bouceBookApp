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
 * Created by Paul on 17/01/2016.
 * Based on http://stackoverflow.com/questions/8166497/custom-adapter-for-list-view
 */
public class CustomListAdapter extends ArrayAdapter<Skill> {
    private Context context;
    private int resource;
    private ArrayList<Skill> skills;

    public CustomListAdapter(Context context, int resource, ArrayList<Skill> skills) {
        super(context, resource, skills);
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        LayoutInflater inflater = (LayoutInflater) context.getSystemService( Context.LAYOUT_INFLATER_SERVICE );
        View mySpinner = inflater.inflate(R.layout.custom_list_item, parent, false);

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
        else{
            textSub.setText(skills.get(position).figNotation);
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
