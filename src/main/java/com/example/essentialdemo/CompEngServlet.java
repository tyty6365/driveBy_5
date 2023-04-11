package com.example.essentialdemo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "CompEngServlet", value = "/CompEngServlet")
public class CompEngServlet extends HttpServlet {
    ArrayList<Class> compEnge = new ArrayList<>();
    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user_neww = (User) getServletContext().getAttribute("User");
        String className = request.getParameter("className");
        System.out.println("User: " + user_neww.eightNine);
        System.out.println("Dropping class:" + className);
        user_neww.removeClassFromSchedule(user_neww.eightNine,className);
        compEnge = user_neww.scheduledClasses;
        request.setAttribute("compEnge", compEnge);

        // forward the request to the JSP page to display the updated scheduled classes
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/CompEngSchedule.jsp");
        dispatcher.forward(request, response);
    }

    protected void redirection(HttpServletRequest request, HttpServletResponse response, ArrayList<Class> a) throws ServletException, IOException {
//
        request.setAttribute("compEnge", a);
        if (a!=null) {
            RequestDispatcher dispatcherr = request.getRequestDispatcher("WEB-INF/CompSciSchedule.jsp");
            dispatcherr.forward(request, response);
//
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String CompSciClasses = request.getParameter("CE");
        User ceuser = (User) getServletContext().getAttribute("User");
        compEnge = ceuser.scheduledClasses;
        if(CompSciClasses.equals("schedule")){
            redirection(request, response, compEnge);
        }else {
            String username_new = (String) getServletContext().getAttribute("Username");
//            System.out.println(username);

            Course newCourse = new Course("/Users/tscott/Documents/GitHub/essentialDemoOff/src/main/java/com/example/essentialdemo/classtxtFolder/" + CompSciClasses+".txt");
            Class newClass = new Class(newCourse.name, newCourse.section, newCourse.creditHours, newCourse.days, newCourse.start, newCourse.morning, newCourse.end, newCourse.endMorning, newCourse.building, newCourse.room, newCourse.instructor, newCourse.prereqs);
            ceuser.addClassToSchedule(newClass);
            compEnge = ceuser.scheduledClasses;
            for( Class class1 : compEnge){
                System.out.println(class1.name);
                System.out.println(class1.room);
                System.out.println(class1.instructor);
            }

            File classes = new File("/Users/tscott/Documents/GitHub/essentialDemoOff/src/main/java/com/example/essentialdemo/classtxtFolder/" + username_new);
            RequestDispatcher dispatcher_new = request.getRequestDispatcher("WEB-INF/CompEngSchedule.jsp");
            dispatcher_new.forward(request, response);

        }

    }
}
