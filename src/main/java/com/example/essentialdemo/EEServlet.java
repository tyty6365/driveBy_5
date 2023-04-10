package com.example.essentialdemo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "EEServlet", value = "/EEServlet")
public class EEServlet extends HttpServlet {

    ArrayList<Class> ee = new ArrayList<>();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User eeuser = (User) getServletContext().getAttribute("User");
        String className = request.getParameter("className");
        System.out.println("User: " + eeuser.eightNine);
        System.out.println("Dropping class:" + className);
        eeuser.removeClassFromSchedule(eeuser.eightNine,className);
        ee = eeuser.scheduledClasses;
        request.setAttribute("ee", ee);

        // forward the request to the JSP page to display the updated scheduled classes
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/EESchedule.jsp");
        dispatcher.forward(request, response);
    }

    protected void redirection(HttpServletRequest request, HttpServletResponse response, ArrayList<Class> a) throws ServletException, IOException {
//
        request.setAttribute("ee", a);
        if (a!=null) {
            RequestDispatcher dispatcherr = request.getRequestDispatcher("WEB-INF/EESchedule.jsp");
            dispatcherr.forward(request, response);
//
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String eeClasses = request.getParameter("EE");
        User eeuser = (User) getServletContext().getAttribute("User");
         ee = eeuser.scheduledClasses;
         if(eeClasses.equals("schedule")){
            redirection(request, response, ee);
        }else {
            String username = (String) getServletContext().getAttribute("Username");
//            System.out.println(username);

            Course newCourse = new Course("C:\\Users\\mimic\\IdeaProjects\\essentialDemoOff\\src\\main\\java\\com\\example\\essentialdemo\\classtxtFolder\\" + eeClasses);
            Class newClass = new Class(newCourse.name, newCourse.section, newCourse.creditHours, newCourse.days, newCourse.start, newCourse.morning, newCourse.end, newCourse.endMorning, newCourse.building, newCourse.room, newCourse.instructor, newCourse.prereqs);
            eeuser.addClassToSchedule(newClass);
             ee = eeuser.scheduledClasses;
            for( Class class1 : ee){
                System.out.println(class1.name);
                System.out.println(class1.room);
                System.out.println(class1.instructor);
            }

            File classes = new File("C:\\Users\\mimic\\IdeaProjects\\essentialDemoOff\\src\\main\\java\\com\\example\\essentialdemo\\classtxtFolder\\" + username);
            RequestDispatcher dispatcherrr = request.getRequestDispatcher("WEB-INF/ElectricalEngineering.jsp");
            dispatcherrr.forward(request, response);

        }

    }
    }

