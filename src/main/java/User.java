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

    public void addClassToSchedule(Class wantsToAdd){
        System.out.println(wantsToAdd.name);
        for(int i = 0; i < finishedClasses.size(); i++){
            if(wantsToAdd.name.equals(finishedClasses.get(i))){
                //return error message to User saying they've already taken class
            }
        }

        for(int i = 0; i < scheduledClasses.size(); i++){
            if(wantsToAdd.name.equals(scheduledClasses.get(i).name)){
                //return error message to User saying they are already taking this class
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
            //send user a message saying class successfully scheduled
        }else{
            if(!preReqCheck){
                System.out.println("Did not pass prereqcheck");
                //return statement to user that they have not completed the required prerequisites for this class
                //break
            }
            else if(!timeDiscrepancyCheck){
                System.out.println("Did not pass DiscrepancyCheck");
                //return statement to user that they have a time discrepancy with a class that is already scheduled
                //break
            }
            else if(!passesHoursCheck){
                System.out.println("Did not pass HoursCheck");
                //return statement to user that scheduling this class would exceed the maximum number of scheduling hours allowed
                //break
            }
        }
    }
    public boolean checkTimeDiscrepancy(Class wantsToAdd){

        //goes through each class that is already scheduled
        for(int i = 0; i < scheduledClasses.size(); i++){

            //goes through each individual scheduled class's days
            for(int j = 0; j < scheduledClasses.get(i).cTime.daysOfWeek.length; j++){
                if(wantsToAdd.cTime.daysOfWeek[j] == scheduledClasses.get(i).cTime.daysOfWeek[j]){
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
        if(addStart == scheduledStart && addEnd < scheduledEnd){
            return false;
        }
        if(addEnd == scheduledEnd && addStart > scheduledStart){
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
    public void removeClassFromSchedule(Class wantsToRemove){
        for(int i = 0; i < scheduledClasses.size(); i++){
            if(wantsToRemove.name.equals(scheduledClasses.get(i).name)){
                scheduledClasses.remove(scheduledClasses.get(i));
            }
        }
        DropCourse.updateTextFile(this.eightNine,wantsToRemove.name);
        //send user a message saying class has successfully been removed
    }
}
