package com.example.essentialdemo;

import java.text.DecimalFormat;

public class decimalFormat {
    public static String formatDouble(double value) {
        DecimalFormat df = new DecimalFormat("0.00");
        String formattedValue = df.format(value);
        String[] parts = formattedValue.split("\\.");
        return parts[0] + ":" + parts[1];
    }


}
