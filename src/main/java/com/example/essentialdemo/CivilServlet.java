package com.example.essentialdemo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "CivilServlet", value = "/CivilServlet")
public class CivilServlet extends HttpServlet {
    ArrayList<Class> civiee = new ArrayList<>();
    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User civiuser = (User) getServletContext().getAttribute("User");
        String className = request.getParameter("className");
        System.out.println("User: " + civiuser.eightNine);
        System.out.println("Dropping class:" + className);
        civiuser.removeClassFromSchedule(civiuser.eightNine,className);
        civiee = civiuser.scheduledClasses;
        request.setAttribute("civiee", civiee);

        // forward the request to the JSP page to display the updated scheduled classes
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/CivilEngSchedule.jsp");
        dispatcher.forward(request, response);
    }

    protected void redirection(HttpServletRequest request, HttpServletResponse response, ArrayList<Class> a) throws ServletException, IOException {
//
        request.setAttribute("civiee", a);
        if (a!=null) {
            RequestDispatcher dispatcherr = request.getRequestDispatcher("WEB-INF/CivilEngSchedule.jsp");
            dispatcherr.forward(request, response);
//
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ceClasses = request.getParameter("CiviE");
        User ceuser = (User) getServletContext().getAttribute("User");
        civiee = ceuser.scheduledClasses;
        if(ceClasses.equals("schedule")){
            redirection(request, response, civiee);
        }else {
            String username = (String) getServletContext().getAttribute("Username");
//            System.out.println(username);

            Course newCourse = new Course("/Users/tscott/Documents/GitHub/essentialDemoOff/src/main/java/com/example/essentialdemo/classtxtFolder/" + ceClasses+".txt");
            Class newClass = new Class(newCourse.name, newCourse.section, newCourse.creditHours, newCourse.days, newCourse.start, newCourse.morning, newCourse.end, newCourse.endMorning, newCourse.building, newCourse.room, newCourse.instructor, newCourse.prereqs);
            ceuser.addClassToSchedule(newClass);
            civiee = ceuser.scheduledClasses;
            for( Class class1 : civiee){
                System.out.println(class1.name);
                System.out.println(class1.room);
                System.out.println(class1.instructor);
            }

            File classes = new File("/Users/tscott/Documents/GitHub/essentialDemoOff/src/main/java/com/example/essentialdemo/classtxtFolder/" + username);
            RequestDispatcher dispatcherrr = request.getRequestDispatcher("WEB-INF/CivilEngSchedule.jsp");
            dispatcherrr.forward(request, response);

        }

    }
}

