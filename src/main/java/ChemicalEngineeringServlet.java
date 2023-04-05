//import javax.servlet.*;
//import javax.servlet.http.*;
//import javax.servlet.annotation.*;
//import java.io.BufferedWriter;
//import java.io.FileWriter;
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//@WebServlet(name = "ChemicalEngineeringServlet", value = "/ChemicalEngineeringServlet")
//public class ChemicalEngineeringServlet extends HttpServlet {
//
//    public static List<String> classes;
//    public static Map<Integer, String> classesTest;
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
////        List<String> selectedClasses = new ArrayList<>();
////
////        String action = request.getParameter("CHEENG");
////        switch (action) {
////            case "CHE 1100":
////                selectedClasses.add("CHE 1100");
////                break;
////            case "CHEM 1202":
////                selectedClasses.add("CHEM 1202");
////                break;
////            case "CHEM 2171":
////                selectedClasses.add("CHEM 2171");
////                break;
////            case "CHEM 2176":
////                selectedClasses.add("CHEM 2176");
////                break;
////            default:
////                break;
////        }
////
////        request.setAttribute("selectedClasses", selectedClasses);
////        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/schedule.jsp");
////        dispatcher.forward(request, response);
////    }
//        String action = request.getParameter("CHEENG");
//        System.out.println(action);
//        classes = new ArrayList<>();
//
//        //test
//
//       // classes.add(action);
//
//        switch (action) {
//            case "CHE 1100":
//                ArrayList<String> one = new ArrayList<>();
//                one.add("CHE 1100");
//                request.setAttribute("one", one);
//                classes.addAll(one);
//                System.out.println("Value of one: " + one);
//                System.out.println("Value of classes at one: " + classes);
//                break;
//            case "CHEM 1202":
//                ArrayList<String> two = new ArrayList<>();
//                two.add("CHEM 1202");
//                request.setAttribute("two", two);
//                classes.addAll(two);
//                break;
//            case "CHEM 2171":
//                ArrayList<String> three = new ArrayList<>();
//                three.add("CHEM 2171");
//                request.setAttribute("three", three);
//                classes.addAll(three);
//                break;
//            case "CHEM 2176":
//                ArrayList<String> four = new ArrayList<>();
//                four.add("CHEM 2176");
//                request.setAttribute("four", four);
//                classes.addAll(four);
//                break;
//            default:
//                break;
//        }
//
//        System.out.println("class val after: " + classes);
//
//        request.setAttribute("classes", classes);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/Software.jsp");
//        dispatcher.forward(request, response);
////        switch (action) {
////            case "CHE 1100":
////
////
////                break;
////            case "CHEM 1202":
////                request.setAttribute("two", "CHEM 1202");
////
////                break;
////            case "CHEM 2171":
////                request.setAttribute("three", "CHEM 2171");
////
////                break;
////            case "CHEM 2176":
////                request.setAttribute("four", "CHEM 2176");
////
////                break;
////            case "See classes":
////                RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/schedule.jsp");
////                dispatcher.forward(request, response);
////                 break;
////            default:
////                break;
////        }
////        String action = request.getParameter("CHEENG");
////        ArrayList<String> classes = new ArrayList<>();
////        classes.add(action);
////        request.setAttribute("four", classes);
////
////
////        ArrayList<String> classn = new ArrayList<>();
////        String[] selectedClasses = request.getParameterValues("CHEENG");
////
////        if(selectedClasses != null && selectedClasses.length > 0) {
////            for(String className : selectedClasses) {
////                classn.add(className);
////            }
////        }
////
////        request.setAttribute("classList", classn);
////        RequestDispatcher dispatcherr = request.getRequestDispatcher("WEB-INF/schedule.jsp");
////        dispatcherr.forward(request, response);
////
////    }
//
//        // file one
////        String action = request.getParameter("CHEENG");
////        try {
////            // Open the file for writing
////            BufferedWriter writer = new BufferedWriter(new FileWriter("C:\\Users\\mimic\\IdeaProjects\\essentialDemoOff\\src\\main\\java\\chemicalenginnering.txt"));
////
////            // Write the value to the file
////
////            writer.write(action);
////            System.out.println(action);
////
////            // Close the file
////            writer.close();
////        } catch (IOException e) {
////            System.err.println("Error writing to file: " + e.getMessage());
////        }
////    }
//
//
//    }
//}
//
//
//
//
