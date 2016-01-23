package com.iamapaulling.paul.bouncebook;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.widget.Toast;

import java.util.ArrayList;

/**
 * Created by Paul on 17/01/2016.
 */
public class Skill {
    public int id = -1;
    public String name;
    public int competition = 0;
    public String level = "";
    public String figNotation = "";
    public float tariff = 0;
    public int shaped = 0;
    public float shapeBonus = 0;
    public String startPosition = "";
    public String endPosition = "";
    public String description = "";
    public String coachingPoints = "";
    public String prereq = "";
    public String lateral_prog = "";
    public String linear_prog = "";
    public String vid = "";
    public int starred = 0;

    public Skill(String name) {
        this.name = name;
    }

    public Skill(String name, float tariff) {
        this.name = name;
        this.tariff = tariff;
    }

    public Skill(int id, String name, int competition, String figNotation, float tariff, int shaped, float shapeBonus, String startPosition, String endPosition) {
        this.id = id;
        this.name = name;
        this.competition = competition;
        this.figNotation = figNotation;
        this.tariff = tariff;
        this.shaped = shaped;
        this.shapeBonus = shapeBonus;
        this.startPosition = startPosition;
        this.endPosition = endPosition;
    }

    public Skill(int id, String name, int competition, String level, String figNotation, float tariff, int shaped, float shapeBonus, String startPosition, String endPosition, String description, String coachingPoints, String prereq, String lateral_prog, String linear_prog, String vid, int starred) {
        this.id = id;
        this.name = name;
        this.competition = competition;
        this.level = level;
        this.figNotation = figNotation;
        this.tariff = tariff;
        this.shaped = shaped;
        this.shapeBonus = shapeBonus;
        this.startPosition = startPosition;
        this.endPosition = endPosition;
        this.description = description;
        this.coachingPoints = coachingPoints;
        this.prereq = prereq;
        this.lateral_prog = lateral_prog;
        this.linear_prog = linear_prog;
        this.vid = vid;
        this.starred = starred;
    }

    // Gets skill names from the db
    public static ArrayList<Skill> getSkillsFromDatabase(Context context, String whereClause) {
        // Connect to db
        SQLiteDatabase skillsDatabase = SkillsDatabaseHelper.getInstance(context).getWritableDatabase();

        // A Cursor provides read and write access to database results
        Cursor cursor = skillsDatabase.rawQuery("SELECT * FROM tariff_skills "+ whereClause +" ORDER BY `id` ASC", null);

        // Move to the first row of results
        cursor.moveToFirst();

        // Object to be returned
        ArrayList<Skill> allSkills = null;

        // Verify that we have results
        if (cursor.getCount() > 0) {
            // Array to store all skills as Skill Objects. Tariff of categories set to -1
            allSkills = new ArrayList<>();
            String lastLevel = "";

            do {
                // Get the result and store it in a String
                String thisLevel = cursor.getString(cursor.getColumnIndex("level"));

                if (!thisLevel.equals(lastLevel)) {
                    allSkills.add(new Skill(thisLevel, -1));
                    lastLevel = thisLevel;
                }

                allSkills.add(new Skill(
                                cursor.getInt(cursor.getColumnIndex("id")),
                                cursor.getString(cursor.getColumnIndex("name")),
                                cursor.getInt(cursor.getColumnIndex("competition_skill")),
                                cursor.getString(cursor.getColumnIndex("fig_notation")),
                                cursor.getFloat(cursor.getColumnIndex("tariff")),
                                cursor.getInt(cursor.getColumnIndex("shaped")),
                                cursor.getFloat(cursor.getColumnIndex("shape_bonus")),
                                cursor.getString(cursor.getColumnIndex("start_position")),
                                cursor.getString(cursor.getColumnIndex("end_position"))
                        )
                );

                // Keep getting results while they exist
            } while (cursor.moveToNext());
        } else {
            Toast.makeText(context, "No Results to Show", Toast.LENGTH_SHORT).show();
        }
        cursor.close();

        return allSkills;
    }

    public static Skill getSkillById(Context context, String skillIdString) {
        // Connect to db
        SQLiteDatabase skillsDatabase = SkillsDatabaseHelper.getInstance(context).getWritableDatabase();

        // A Cursor provides read and write access to database results
        Cursor cursor = skillsDatabase.rawQuery("SELECT * FROM tariff_skills WHERE id=?", new String[]{skillIdString});

        // Move to the first row of results
        cursor.moveToFirst();

        Skill thisSkill = null;

        // Verify that we have results
        if (cursor.getCount() == 1) {
            thisSkill = new Skill(
                    cursor.getInt(cursor.getColumnIndex("id")),
                    cursor.getString(cursor.getColumnIndex("name")),
                    cursor.getInt(cursor.getColumnIndex("competition_skill")),
                    cursor.getString(cursor.getColumnIndex("level")),
                    cursor.getString(cursor.getColumnIndex("fig_notation")),
                    cursor.getFloat(cursor.getColumnIndex("tariff")),
                    cursor.getInt(cursor.getColumnIndex("shaped")),
                    cursor.getFloat(cursor.getColumnIndex("shape_bonus")),
                    cursor.getString(cursor.getColumnIndex("start_position")),
                    cursor.getString(cursor.getColumnIndex("end_position")),
                    cursor.getString(cursor.getColumnIndex("description")),
                    cursor.getString(cursor.getColumnIndex("coaching_points")),
                    cursor.getString(cursor.getColumnIndex("prereq")),
                    cursor.getString(cursor.getColumnIndex("lateral_prog")),
                    cursor.getString(cursor.getColumnIndex("linear_prog")),
                    cursor.getString(cursor.getColumnIndex("vid")),
                    cursor.getInt(cursor.getColumnIndex("starred"))
            );
        } else if (cursor.getCount() > 1) {
            Toast.makeText(context, "Error: More than one skill with this id", Toast.LENGTH_SHORT).show();
        } else {
            Toast.makeText(context, "No Results to Show", Toast.LENGTH_SHORT).show();
        }
        cursor.close();

        return thisSkill;
    }

    ;
}

