import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Course {

    String name;
    int section;
    int creditHours;
    double start;
    boolean morning;
    double end;
    boolean endMorning;
    boolean[] days = new boolean[5];
    String room;
    String building;
    String instructor;
    String[] prereqs;

    public Course(String filename) {
        try {
            BufferedReader reader = new BufferedReader(new FileReader(filename));
            String line;
            while ((line = reader.readLine()) != null) {
                String[] parts = line.split(":", 2);
                String key = parts[0].trim();
                String value = parts[1].trim();
                switch (key) {
                    case "Name":
                        name = value;
                        break;
                    case "Section":
                        section = Integer.parseInt(value);
                        break;
                    case "Credit Hours":
                        creditHours = Integer.parseInt(value);
                        break;
                    case "Start":
                        start = Double.parseDouble(value);
                        break;
                    case "Morning?":
                        morning = value.equalsIgnoreCase("am");
                        break;
                    case "End":
                        end = Double.parseDouble(value);
                        break;
                    case "EndMorning?":
                        endMorning = value.equalsIgnoreCase("am");
                        break;
                    case "M":
                        days = new boolean[]{Boolean.parseBoolean(value), days[1], days[2], days[3], days[4]};
                        break;
                    case "T":
                        days = new boolean[]{days[0], Boolean.parseBoolean(value), days[2], days[3], days[4]};
                        break;
                    case "W":
                        days = new boolean[]{days[0], days[1], Boolean.parseBoolean(value), days[3], days[4]};
                        break;
                    case "TH":
                        days = new boolean[]{days[0], days[1], days[2], Boolean.parseBoolean(value), days[4]};
                        break;
                    case "F":
                        days = new boolean[]{days[0], days[1], days[2], days[3], Boolean.parseBoolean(value)};
                        break;
                    case "Room":
                        room = value;
                        break;
                    case "Building":
                        building = value;
                        break;
                    case "Instructor":
                        instructor = value;
                        break;
                    case "Prereqs":
                        prereqs = value.split(",");
                        break;
                }
            }
            reader.close();
        } catch (FileNotFoundException e) {
            System.out.println("File not found: " + filename);
        } catch (IOException e) {
            System.out.println("Error reading file: " + filename);
        }
    }
}