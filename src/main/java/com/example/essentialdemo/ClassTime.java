package com.example.essentialdemo;

public class ClassTime {
    boolean[] daysOfWeek;//[0][1][2][3][4]
    timeDeterminator start;
    timeDeterminator end;

    public ClassTime(boolean[] days, double firstNum, boolean morning1, double secondNum, boolean morning2){
        daysOfWeek = days;
        start = new timeDeterminator(firstNum, morning1);
        end = new timeDeterminator(secondNum, morning2);
    }
}
