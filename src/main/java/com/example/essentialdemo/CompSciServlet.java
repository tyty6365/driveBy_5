package com.example.essentialdemo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "CompSciServlet", value = "/CompSciServlet")
public class CompSciServlet extends HttpServlet {
    ArrayList<Class> cse = new ArrayList<>();
    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user_new = (User) getServletContext().getAttribute("User");
        String className = request.getParameter("className");
        System.out.println("User: " + user_new.eightNine);
        System.out.println("Dropping class:" + className);
        user_new.removeClassFromSchedule(user_new.eightNine,className);
        cse = user_new.scheduledClasses;
        request.setAttribute("cse", cse);

        // forward the request to the JSP page to display the updated scheduled classes
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/CESchedule.jsp");
        dispatcher.forward(request, response);
    }

    protected void redirection(HttpServletRequest request, HttpServletResponse response, ArrayList<Class> a) throws ServletException, IOException {
//
        request.setAttribute("cse", a);
        if (a!=null) {
            RequestDispatcher dispatcherr = request.getRequestDispatcher("WEB-INF/CompSciSchedule.jsp");
            dispatcherr.forward(request, response);
//
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String CompSciClasses = request.getParameter("CSE");
        User cseuser = (User) getServletContext().getAttribute("User");
        cse = cseuser.scheduledClasses;
        if(CompSciClasses.equals("schedule")){
            redirection(request, response, cse);
        }else {
            String username_new = (String) getServletContext().getAttribute("Username");
//            System.out.println(username);

            Course newCourse = new Course("/Users/tscott/Documents/GitHub/essentialDemoOff/src/main/java/com/example/essentialdemo/classtxtFolder/" + CompSciClasses+".txt");
            Class newClass = new Class(newCourse.name, newCourse.section, newCourse.creditHours, newCourse.days, newCourse.start, newCourse.morning, newCourse.end, newCourse.endMorning, newCourse.building, newCourse.room, newCourse.instructor, newCourse.prereqs);
            cseuser.addClassToSchedule(newClass);
            cse = cseuser.scheduledClasses;
            for( Class class1 : cse){
                System.out.println(class1.name);
                System.out.println(class1.room);
                System.out.println(class1.instructor);
            }

            File classes = new File("/Users/tscott/Documents/GitHub/essentialDemoOff/src/main/java/com/example/essentialdemo/classtxtFolder/" + username_new);
            RequestDispatcher dispatcher_new = request.getRequestDispatcher("WEB-INF/CompSciSchedule.jsp");
            dispatcher_new.forward(request, response);

        }

    }
}

