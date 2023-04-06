import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
public class UserFileConvertor {
    private String username;
    private String password;
    private ArrayList<String> finishedClasses;
    private ArrayList<String> scheduledClasses;

    public UserFileConvertor(String filename) throws IOException {
        File file = new File(filename);
        BufferedReader br = new BufferedReader(new FileReader(file));
        String line;
        while ((line = br.readLine()) != null) {
            String[] parts = line.split(":");
            if (parts[0].equals("Username")) {
                this.username = parts[1].trim();
            } else if (parts[0].equals("Password")) {
                this.password = parts[1].trim();
            } else if (parts[0].equals("FinishedClasses")) {
                String[] classList = parts[1].split(",");
                this.finishedClasses = new ArrayList<>();
                for (String className : classList) {
                    this.finishedClasses.add(className.trim());
                }
            } else if (parts[0].equals("ScheduledClasses")) {
                String[] classList = parts[1].split(",");
                this.scheduledClasses = new ArrayList<>();
                for (String className : classList) {
                    this.scheduledClasses.add(className.trim());
                }
            }
        }
        br.close();
    }

    public String getUsername() {
        return this.username;
    }

    public String getPassword() {
        return this.password;
    }

    public ArrayList<String> getFinishedClasses() {
        return this.finishedClasses;
    }

    public ArrayList<String> getScheduledClasses() {
        return this.scheduledClasses;
    }
}
