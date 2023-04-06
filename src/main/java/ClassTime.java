public class ClassTime {

    boolean[] daysOfWeek = new boolean[6];
    timeDeterminator start;
    timeDeterminator end;

    public ClassTime(boolean[] days, double firstNum, boolean morning1, double secondNum, boolean morning2){
        start = new timeDeterminator(firstNum, morning1);
        end = new timeDeterminator(secondNum, morning2);
    }
}
