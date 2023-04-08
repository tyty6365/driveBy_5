package com.example.essentialdemo;

import java.text.DecimalFormat;

public class timeDeterminator {
    public double time;
    public boolean am;
    public boolean pm;
    public String fixedTime;

    public timeDeterminator(double time, boolean morning){
        this.time = time;
        if(morning){
            am = true;
            pm = false;
        }else{
            am = false;
            pm = true;
        }

        fixedTime = decimalFormat.formatDouble(time);

    }

//    public String timeString(double fileTime){
//        double thisTime = fileTime;
//        int hour = (int) thisTime;
//        int minute = (int) ((thisTime - hour) * 60 + 0.5);
//        String timeString;
//        if (minute == 0) {
//            timeString = hour + ":00";
//        } else {
//            timeString = hour + ":" + String.format("%02d", minute);
//        }
//        return timeString;
//
//
//
//
//    }
}
