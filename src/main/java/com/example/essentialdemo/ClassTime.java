package com.example.essentialdemo;

public class ClassTime {
    public boolean[] daysOfWeek;//[0][1][2][3][4]
    public timeDeterminator start;
    public timeDeterminator end;

    public String m = "";
    public String t = "";
    public String w = "";
    public String th = "";
    public String f = "";
    public String dWeek = "";


    public ClassTime(boolean[] days, double firstNum, boolean morning1, double secondNum, boolean morning2){
        daysOfWeek = days;
        start = new timeDeterminator(firstNum, morning1);
        end = new timeDeterminator(secondNum, morning2);

        if(days[0] == true){
            m = "M-";
        }
        if(days[1] == true){
            t = "T-";
        }
        if(days[2] == true){
            w = "W-";
        }
        if(days[3] == true){
            th = "TH-";
        }
        if(days[4] == true){
            f = "F-";
        }
        dWeek = m+t+w+th+f;
        dWeek = dWeek.substring(0,dWeek.length()-1);


    }
}
