package com.example.essentialdemo;

import java.util.ArrayList;

public class User {
    String eightNine;
    String password;
    final int ALLOWED_HOURS = 19;
    ArrayList<String> finishedClasses;
    ArrayList<Class> scheduledClasses = new ArrayList<Class>();

    public User(String userName, String password, ArrayList<String> finished){
        eightNine = userName;
        this.password = password;
        finishedClasses = finished;
    }

    public void fileAddToSchedule(Class wantsToAdd){


        scheduledClasses.add(wantsToAdd);
    }

    public String popUpMessage(String message){
        Course newCourse = new Course("C:\\Users\\willc\\IdeaProjects\\essentialDemoOff3\\src\\main\\java\\com\\example\\essentialdemo\\classtxtFolder\\" + message + ".txt");
        Class newClass = new Class(newCourse.name, newCourse.section, newCourse.creditHours, newCourse.days, newCourse.start, newCourse.morning, newCourse.end, newCourse.endMorning, newCourse.building, newCourse.room, newCourse.instructor, newCourse.prereqs);

        System.out.println(newClass.name);
        for(int i = 0; i < finishedClasses.size(); i++){
            if(newClass.name.equals(finishedClasses.get(i))){
                return "You have already taken this class.";
            }
        }
        for(int i = 0; i < scheduledClasses.size(); i++){
            if(newClass.name.equals(scheduledClasses.get(i).name)){
                return "You have already scheduled this class";
            }
        }
        boolean passesHoursCheck = doesNotExceedMaximumHours(newClass);
        boolean preReqCheck = checkPreReqs(newClass);
        boolean timeDiscrepancyCheck = checkTimeDiscrepancy(newClass);
        if(passesHoursCheck && preReqCheck && timeDiscrepancyCheck){
            return "Successfully added class to schedule!";
        }else{
            if(!preReqCheck){
                return "Did not pass prereqcheck";
            }
            else if(!timeDiscrepancyCheck){
                return "Did not pass DiscrepancyCheck";
            }
            else if(!passesHoursCheck){
                return "Did not pass HoursCheck";
            }
        }
        return "";

    }

    public String addClassToSchedule(Class wantsToAdd){
        System.out.println(wantsToAdd.name);
        for(int i = 0; i < finishedClasses.size(); i++){
            if(wantsToAdd.name.equals(finishedClasses.get(i))){
                return "You have already taken this class.";
            }
        }
        for(int i = 0; i < scheduledClasses.size(); i++){
            if(wantsToAdd.name.equals(scheduledClasses.get(i).name)){
                return "You have already scheduled this class";
            }
        }
        boolean passesHoursCheck = doesNotExceedMaximumHours(wantsToAdd);
        boolean preReqCheck = checkPreReqs(wantsToAdd);
        boolean timeDiscrepancyCheck = checkTimeDiscrepancy(wantsToAdd);
        if(passesHoursCheck && preReqCheck && timeDiscrepancyCheck){
            scheduledClasses.add(wantsToAdd);
            System.out.println(this.eightNine);
            System.out.println(wantsToAdd.name);
            UpdateUserText.updateTextFile(this.eightNine, wantsToAdd.name);
            return "Successfully added class to schedule!";
        }else{
            if(!preReqCheck){
                return "Did not pass prereqcheck";
            }
            else if(!timeDiscrepancyCheck){
                return "Did not pass DiscrepancyCheck";
            }
            else if(!passesHoursCheck){
                return "Did not pass HoursCheck";
            }
        }
        return "";
    }
    public boolean checkTimeDiscrepancy(Class wantsToAdd){

        //goes through each class that is already scheduled
        for(int i = 0; i < scheduledClasses.size(); i++){

            //goes through each individual scheduled class's days
            for(int j = 0; j < scheduledClasses.get(i).cTime.daysOfWeek.length; j++){
                if(wantsToAdd.cTime.daysOfWeek[j] == scheduledClasses.get(i).cTime.daysOfWeek[j]){

                    System.out.println(j+"wants to add" + wantsToAdd.cTime.daysOfWeek[j]);
                    System.out.println(j+"scheduledClasses" + scheduledClasses.get(i).cTime.daysOfWeek[j]);


                    boolean passedDayComparison = dayComparison(wantsToAdd, scheduledClasses.get(i));
                    if(!passedDayComparison){
                        return false;
                    }
                }
            }

        }

        return true;
    }
    public boolean dayComparison(Class wantsToAdd, Class alreadyScheduled){

        double addStart = wantsToAdd.cTime.start.time;
        double scheduledStart = alreadyScheduled.cTime.start.time;
        double addEnd = wantsToAdd.cTime.end.time;
        double scheduledEnd = alreadyScheduled.cTime.end.time;

        if(wantsToAdd.cTime.start.pm){
            addStart += 12;
        }
        if(wantsToAdd.cTime.end.pm){
            addEnd += 12;
        }
        if(alreadyScheduled.cTime.start.pm){
            scheduledStart += 12;
        }
        if(alreadyScheduled.cTime.end.pm){
            scheduledEnd += 12;
        }

        if(addStart > scheduledStart && addStart < scheduledEnd){
            return false;
        }
        if(addEnd > scheduledStart && addEnd < scheduledEnd){
            return false;
        }
        if(addStart == scheduledStart && addEnd == scheduledEnd){
            return false;
        }
        if(addStart == scheduledStart && addEnd > scheduledEnd){
            return false;
        }
        if(addEnd == scheduledEnd && addStart < scheduledStart){
            return false;
        }
        return true;
    }
    public boolean doesNotExceedMaximumHours(Class wantsToAdd){
        boolean passesMaximumHoursCheck = true;
        int wantsToAddHours = wantsToAdd.hours;
        int scheduledHours = 0;
        for(int i = 0; i < scheduledClasses.size(); i++){
            scheduledHours += scheduledClasses.get(i).hours;
        }
        if(wantsToAddHours + scheduledHours > ALLOWED_HOURS){
            passesMaximumHoursCheck = false;
        }
        return passesMaximumHoursCheck;
    }
    public boolean checkPreReqs(Class wantsToAdd){
        boolean passesPreReqCheck = true;
        int z = wantsToAdd.prerequisites.length;
        boolean[] preReqMet = new boolean[z];
//        System.out.println(z);
//        for(int i = 0; i< wantsToAdd.prerequisites.length;i++){
//            System.out.println("|"+wantsToAdd.prerequisites[i]+"|");
//        }
        if(wantsToAdd.prerequisites[0].equals("")){
            return true;
        }
        for(int i = 0; i < preReqMet.length; i++){
            preReqMet[i] = false;
        }


        for(int i = 0; i < wantsToAdd.prerequisites.length;i++){
            for(int j = 0; j < finishedClasses.size(); j++){
                if(wantsToAdd.prerequisites[i].equals(finishedClasses.get(j))){
                    preReqMet[i] = true;
                }
            }
        }

        for(int i = 0; i < preReqMet.length;i++){
            if(preReqMet[i] == false){
                passesPreReqCheck = false;
            }
        }
        System.out.println(passesPreReqCheck);
        return passesPreReqCheck;
    }
    public void removeClassFromSchedule(String userName, String wantsToRemove){

        for(int i = 0; i < scheduledClasses.size(); i++){
            if(wantsToRemove.equals(scheduledClasses.get(i).name)){
                scheduledClasses.remove(scheduledClasses.get(i));
            }
        }
        DropCourse.updateTextFile(this.eightNine,wantsToRemove);
        //send user a message saying class has successfully been removed
    }
}
