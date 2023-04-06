import java.io.IOException;
import java.util.ArrayList;

public class Main {
    public static void main(String[] args) throws IOException {

        //The code below will take in a Username and create a new User object that will add all of the parameters of that user
        UserFileConvertor w = new UserFileConvertor("C:\\Users\\willc\\IdeaProjects\\User\\src\\894563332");//change when put into website
        ArrayList<Class> wClasses = new ArrayList<>();
        for(int i = 0; i < w.getScheduledClasses().size(); i++){
            String testClass = w.getScheduledClasses().get(i);
            Course a = new Course("C:\\Users\\willc\\IdeaProjects\\User\\src\\"+testClass);
            wClasses.add(new Class(a.name,a.section,a.creditHours,a.days,a.start,a.morning,a.end,a.endMorning,a.building,a.room,a.instructor,a.prereqs));
        }
        User willc = new User(w.getUsername(),w.getPassword(),w.getFinishedClasses());
        for(int i = 0; i < wClasses.size(); i++){
            willc.fileAddToSchedule(wClasses.get(i));
        }
        System.out.println("EightNine:");
        System.out.println(willc.eightNine);
        System.out.println("Password:");
        System.out.println(willc.password);
        System.out.println("Scheduled Classes:");

        Course csc4040 = new Course("C:\\Users\\willc\\IdeaProjects\\User\\src\\"+"CSC4040");
        willc.addClassToSchedule(new Class(csc4040.name,csc4040.section,csc4040.creditHours,csc4040.days,csc4040.start,csc4040.morning,csc4040.end,csc4040.endMorning, csc4040.building, csc4040.room,csc4040.instructor,csc4040.prereqs));


        for(int i = 0; i < willc.scheduledClasses.size(); i++){
            System.out.println("   " + willc.scheduledClasses.get(i).name);
            System.out.println("      " + willc.scheduledClasses.get(i).cTime.start.time);
            System.out.println("      " + willc.scheduledClasses.get(i).cTime.start.pm);
            System.out.println("      " + willc.scheduledClasses.get(i).cTime.end.time);
            System.out.println("      " + willc.scheduledClasses.get(i).cTime.end.pm);
        }

    }
}