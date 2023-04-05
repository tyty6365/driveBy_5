import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

//@WebServlet(name = "ElectricalEngineering", value = "/ElectricalEngineering")
//public class ElectricalEngineering extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
////        List<String> buttons = new ArrayList<>();
////        String[] buttonDataValues = request.getParameterValues("data-value");
////        String[] buttonValues = request.getParameterValues("button-value");
////        if (buttonDataValues != null && buttonValues != null) {
////            for (int i = 0; i < buttonDataValues.length; i++) {
////                if (buttonDataValues[i].equals("true")) {
////                    buttons.add(buttonValues[i]);
////                    System.out.println(buttons.get(i));
////                }
////            }
////        }
////        if (!buttons.isEmpty()) {
////            Path filePath = Paths.get("C:\\Users\\mimic\\IdeaProjects\\essentialDemoOff\\src\\main\\java\\electrical.txt");
////            Files.write(filePath, buttons);
////            System.out.println("File path: " + filePath);
////            System.out.println("File contents: " + Files.readAllLines(filePath));
////        }
//        String courseCode = request.getParameter("button");
//        // get the value of the clicked button
//        System.out.println(courseCode);
//
//        // get the session object
//        HttpSession session = request.getSession();
//
//        // get the list of selected course codes from the session
//        ArrayList<String> selectedCourses = (ArrayList<String>) session.getAttribute("selectedCourses");
//
//        // if the list doesn't exist, create a new one
//        if (selectedCourses == null) {
//            selectedCourses = new ArrayList<String>();
//        }
//
//        // add the current course code to the list
//        selectedCourses.add(courseCode);
//
//        // save the updated list to the session
//        session.setAttribute("selectedCourses", selectedCourses);
//
//        // check if this is the last button
//
//            // stay on the same page
//        RequestDispatcher dispatcher2 = request.getRequestDispatcher("WEB-INF/schedule.jsp");
//         dispatcher2.forward(request, response);
//         response.sendRedirect(request.getHeader("WEB-INF/schedule.jsp"));
//
//    }
//}
