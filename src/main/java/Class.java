public class Class {
    String name;
    int section;
    int hours;//how many credit hours are granted by this class
    ClassTime cTime;
    String building;
    String room;
    String instructor;
    String[] prerequisites;

    public Class(String name, int section, int hours, boolean[] days, double firstNum, boolean morning1, double secondNum, boolean morning2, String building, String room, String instructor, String[] prereqs){
        this.name = name;
        this.section = section;
        this.hours = hours;
        cTime = new ClassTime(days,firstNum,morning1,secondNum,morning2);
        prerequisites = prereqs;
        this.building = building;
        this.room = room;
        this.instructor = instructor;
    }
}
