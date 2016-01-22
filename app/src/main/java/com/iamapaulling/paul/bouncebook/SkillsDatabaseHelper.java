package com.iamapaulling.paul.bouncebook;

import android.content.Context;

import com.readystatesoftware.sqliteasset.SQLiteAssetHelper;

public class SkillsDatabaseHelper extends SQLiteAssetHelper {

    private static SkillsDatabaseHelper helperInstance; // Only instance of db

    private static final String DATABASE_NAME = "theapp.db";
    private static final int DATABASE_VERSION = 2;

    // http://www.androiddesignpatterns.com/2012/05/correctly-managing-your-sqlite-database.html
    public static synchronized SkillsDatabaseHelper getInstance(Context context) {

        // Use the application context, which will ensure that you
        // don't accidentally leak an Activity's context.
        // See this article for more information: http://bit.ly/6LRzfx
        if (helperInstance == null) {
            helperInstance = new SkillsDatabaseHelper(context.getApplicationContext());
        }
        return helperInstance;
    }

    private SkillsDatabaseHelper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }
}

//public class SkillsDataAdapter {
//
//    // Creating this so that other things cant mess out db shit up
//    // https://youtu.be/0JNP7El2kHs?t=5m35s
//    private SkillsDataHelper helper;
//    public SkillsDataAdapter(Context context){
//        helper = new SkillsDataHelper(context);
//    }
//    public long insertData(String data){
//        SQLiteDatabase db = helper.getWritableDatabase();
//        ContentValues contentValues = new ContentValues();
//        contentValues.put(SkillsDataHelper.UID, data); // Using uid as example
//        contentValues.put(SkillsDataHelper.ORDER, data); // Using ORDER as example
//
//        long id = db.insert(SkillsDataHelper.TABLE_NAME,null,contentValues);
//
//        return id;
//    }
//
//    static class SkillsDataHelper extends SQLiteOpenHelper{
//
//        static final String DATABASE_NAME = "TheAppData";
//        static final String TABLE_NAME = "tariff_skills";
//        static final int DATABASE_VERSION = 3;
//        static final String CREATE_TABLE = "CREATE TABLE IF NOT EXISTS `tariff_skills` (" +
//                "  `id` int primary key," +
//                "  `order` real," +
//                "  `level` text," +
//                "  `skill` text," +
//                "  `shaped` int," +
//                "  `shapeBonus` real," +
//                "  `start_position` text," +
//                "  `end_position` text," +
//                "  `tariff` real," +
//                "  `fig_notation` text," +
//                "  `description` text," +
//                ")  ;";
//        static final String DELETE_TABLE = "DROP TABLE IF EXISTS `tariff_skills`;";
//
//        static final String UID = "_id";
//        static final String ORDER = "order";
//        private Context context;
//
//        public SkillsDataHelper(Context context) {
//            super(context, DATABASE_NAME, null, DATABASE_VERSION);
//
//            this.context = context;
//            Toast.makeText(context, "Class Called", Toast.LENGTH_SHORT).show();
//        }
//
//        @Override
//        public void onCreate(SQLiteDatabase db) {
//            try {
//                db.execSQL(CREATE_TABLE);
//                Toast.makeText(context, "DB Created", Toast.LENGTH_SHORT).show();
//            } catch (Exception e) {
//                Toast.makeText(context, "onCreate: " + e, Toast.LENGTH_SHORT).show();
//            }
//
//        }
//
//        @Override
//        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
//            try {
//                Toast.makeText(context, "DB Deleting", Toast.LENGTH_SHORT).show();
//                db.execSQL(DELETE_TABLE);
//                onCreate(db);
//            } catch (Exception e) {
//                Toast.makeText(context, "onUpgrade: " + e, Toast.LENGTH_SHORT).show();
//            }
//        }
//    }

//    public static String[] skillNames;

//    public void SkillsData(){
//        skillNames = parseJSONFromString(loadJSONFromRaw());
//    }

//    public String loadJSONFromRaw() {
//        // Get the JSON as a string from the skills.json
//        String json = null;
//        try {
//            InputStream is = getResources().openRawResource(R.raw.skills);
//            int size = is.available();
//            byte[] buffer = new byte[size];
//            is.read(buffer);
//            is.close();
//            json = new String(buffer, "UTF-8");
//        } catch (IOException ex) {
//            ex.printStackTrace();
//            return null;
//        }
//        return json;
//    }
//
//    public String[] parseJSONFromString(String json){
//        // Parse JSON
//        String[] skillNames = null;
//        try {
//            JSONObject obj = new JSONObject(json);
//            JSONArray SkillsArray = obj.getJSONArray("SkillsArray");
//
//            skillNames = new String[SkillsArray.length()]; // Allocate mem
//            for(int i=0; i<SkillsArray.length(); i++){
//                JSONObject skillObject = SkillsArray.getJSONObject(i);
//                skillNames[i] = skillObject.getString("skill");
//            }
//        } catch (JSONException e) {
//            e.printStackTrace();
//            return null;
//        }
//        return skillNames;
//    }
//}
