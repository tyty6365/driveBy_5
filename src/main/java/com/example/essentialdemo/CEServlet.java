package com.example.essentialdemo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "CEServlet", value = "/CEServlet")
public class CEServlet extends HttpServlet {
    ArrayList<Class> ce = new ArrayList<>();
    @Override
    //added by ariel
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User eeuser = (User) getServletContext().getAttribute("User");
        String className = request.getParameter("className");
        System.out.println("User: " + eeuser.eightNine);
        System.out.println("Dropping class:" + className);
        eeuser.removeClassFromSchedule(eeuser.eightNine,className);
        ce = eeuser.scheduledClasses;
        request.setAttribute("ce", ce);

        // forward the request to the JSP page to display the updated scheduled classes
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/CESchedule.jsp");
        dispatcher.forward(request, response);
    }

    protected void redirection(HttpServletRequest request, HttpServletResponse response, ArrayList<Class> a) throws ServletException, IOException {
//
        request.setAttribute("ce", a);
        if (a!=null) {
            RequestDispatcher dispatcherr = request.getRequestDispatcher("WEB-INF/CESchedule.jsp");
            dispatcherr.forward(request, response);
//
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ceClasses = request.getParameter("CE");
        User ceuser = (User) getServletContext().getAttribute("User");
        ce = ceuser.scheduledClasses;
        if(ceClasses.equals("schedule")){
            redirection(request, response, ce);
        }else {
            String username = (String) getServletContext().getAttribute("Username");
//            System.out.println(username);

            Course newCourse = new Course("/Users/arieljupiter/Documents/GitHub/essentialDemoOff/src/main/java/com/example/essentialdemo/" + ceClasses);
            Class newClass = new Class(newCourse.name, newCourse.section, newCourse.creditHours, newCourse.days, newCourse.start, newCourse.morning, newCourse.end, newCourse.endMorning, newCourse.building, newCourse.room, newCourse.instructor, newCourse.prereqs);
            ceuser.addClassToSchedule(newClass);
            ce = ceuser.scheduledClasses;
            for( Class class1 : ce){
                System.out.println(class1.name);
                System.out.println(class1.room);
                System.out.println(class1.instructor);
            }

            File classes = new File("/Users/arieljupiter/Documents/GitHub/essentialDemoOff/src/main/java/com/example/essentialdemo/" + username);
            RequestDispatcher dispatcherrr = request.getRequestDispatcher("WEB-INF/ChemicalEngineering.jsp");
            dispatcherrr.forward(request, response);

        }

    }
}
