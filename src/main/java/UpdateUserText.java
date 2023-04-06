import java.io.*;

public class UpdateUserText {
    public static void updateTextFile(String fileName, String newClass) {
        try {
            File oldFile = new File("C:\\Users\\willc\\IdeaProjects\\essentialDemoOff(2)\\src\\main\\java\\"+fileName);
            BufferedReader reader = new BufferedReader(new FileReader(oldFile));
            String line = "", oldContent = "";
            while ((line = reader.readLine()) != null) {
                oldContent += line + System.lineSeparator();
            }
            reader.close();
            String newContent = oldContent.replaceFirst("ScheduledClasses:", "ScheduledClasses:" + newClass + ",");
            File newFile = new File("C:\\Users\\willc\\IdeaProjects\\essentialDemoOff(2)\\src\\main\\java\\" + fileName);
            FileWriter writer = new FileWriter(newFile);
            writer.write(newContent);
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}