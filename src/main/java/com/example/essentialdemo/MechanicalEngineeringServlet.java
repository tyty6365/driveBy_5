package com.example.essentialdemo;

import com.example.essentialdemo.Class;
import com.example.essentialdemo.Course;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "MechanicalEngineeringServlet", value = "/MechanicalEngineeringServlet")
public class MechanicalEngineeringServlet extends HttpServlet {
    ArrayList<Class> pp = new ArrayList<>();



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User willc = (User) getServletContext().getAttribute("User");
        String className = request.getParameter("className");
        willc.removeClassFromSchedule(className);
        response.setStatus(HttpServletResponse.SC_OK);

    }

    protected void redirection(HttpServletRequest request, HttpServletResponse response, ArrayList<Class> a) throws ServletException, IOException {
//
        request.setAttribute("pp", a);
        if (a!=null) {
            RequestDispatcher dispatcherr = request.getRequestDispatcher("WEB-INF/Software.jsp");
            dispatcherr.forward(request, response);
//
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String meClasses = request.getParameter("ME");

        if(meClasses.equals("schedule")){
            redirection(request, response, pp);
        }else {
            String username = (String) getServletContext().getAttribute("Username");
            System.out.println(username);
            User willc = (User) getServletContext().getAttribute("User");
            Course newCourse = new Course("C:\\Users\\willc\\IdeaProjects\\essentialDemoOff3\\src\\main\\java\\com\\example\\essentialdemo\\" + meClasses);
            Class newClass = new Class(newCourse.name, newCourse.section, newCourse.creditHours, newCourse.days, newCourse.start, newCourse.morning, newCourse.end, newCourse.endMorning, newCourse.building, newCourse.room, newCourse.instructor, newCourse.prereqs);
            willc.addClassToSchedule(newClass);
             pp = willc.scheduledClasses;
            for( Class class1 : pp){
                System.out.println(class1.name);
                System.out.println(class1.room);
                System.out.println(class1.instructor);
            }

            File classes = new File("C:\\Users\\willc\\IdeaProjects\\essentialDemoOff3\\src\\main\\java\\com\\example\\essentialdemo\\" + username);
            RequestDispatcher dispatcherrr = request.getRequestDispatcher("WEB-INF/MechanicalEngineering.jsp");
            dispatcherrr.forward(request, response);

        }

    }
}

