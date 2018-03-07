package com.iamapaulling.paul.bouncebook;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageButton;

/**
 * Created by Paul on 17/01/2016.
 * Based on http://stackoverflow.com/questions/4823851/multi-state-toggle-button
 */
public class Toggle3States extends ImageButton {

    public interface FlashListener {
        void onClick();
    }

    final private int  numStates = 3;
    private int mState;
    private FlashListener mFlashListener;

    public Toggle3States(Context context, AttributeSet attrs) {
        super(context, attrs);

        //Sets initial state to disabled
        setState(-1);

        this.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View view) {
                int newState = ((mState + 1) % numStates);
                setState(newState);
                performFlashClick();
            }
        });
    }

    private void performFlashClick() {
        if(mFlashListener == null)return;
        mFlashListener.onClick();
    }

    private void createDrawableState() {
        switch (mState) {
            case 0:
                setImageResource(R.drawable.tariff_btn_tuck);
                break;
            case 1:
                setImageResource(R.drawable.tariff_btn_pike);
                break;
            case 2:
                setImageResource(R.drawable.tariff_btn_straight);
                break;
            default: // for disabled state -1
                setImageResource(R.drawable.tariff_btn_no_tuck);
                break;
        }
    }

    public int getState() {
        return mState;
    }

    public void setState(int state) {
        this.mState = state;
        createDrawableState();
    }

    public void setFlashListener(FlashListener flashListener) {
        this.mFlashListener = flashListener;
    }

    @Override
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        if (enabled && getState()==-1){
            setState(0);
        }
        else if(!enabled){
            setState(-1);
        }
    }


    // Saving button state
    //http://stackoverflow.com/questions/3542333/how-to-prevent-custom-views-from-losing-state-across-screen-orientation-changes
    // 2nd answer

    @Override
    public Parcelable onSaveInstanceState()
    {
        Bundle bundle = new Bundle();
        bundle.putParcelable("superState", super.onSaveInstanceState());
        bundle.putInt("mState", getState()); // ... save stuff
        return bundle;
    }

    @Override
    public void onRestoreInstanceState(Parcelable state)
    {
        if (state instanceof Bundle) // implicit null check
        {
            Bundle bundle = (Bundle) state;
            setState(bundle.getInt("mState")); // ... load stuff
            state = bundle.getParcelable("superState");
        }
        super.onRestoreInstanceState(state);
    }

}
