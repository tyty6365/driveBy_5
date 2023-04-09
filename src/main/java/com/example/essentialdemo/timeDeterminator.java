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



}
