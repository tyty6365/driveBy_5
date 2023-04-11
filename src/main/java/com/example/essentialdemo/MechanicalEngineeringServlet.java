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
        System.out.println("User: " + willc.eightNine);
        System.out.println("Dropping class:" + className);
        willc.removeClassFromSchedule(willc.eightNine,className);
        pp = willc.scheduledClasses;
        request.setAttribute("pp", pp);


        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/Software.jsp");
        dispatcher.forward(request, response);
    }

    protected void redirection(HttpServletRequest request, HttpServletResponse response, ArrayList<Class> a) throws ServletException, IOException {
        request.setAttribute("pp", a);
        if (a!=null) {
            RequestDispatcher dispatcherr = request.getRequestDispatcher("WEB-INF/Software.jsp");
            dispatcherr.forward(request, response);
        }
    }

//    protected void popUpMessages(HttpServletRequest request, HttpServletResponse response, String a) throws ServletException, IOException {
//        request.setAttribute("message", a);
//        if (a!=null) {
//            RequestDispatcher popup = request.getRequestDispatcher("WEB-INF/Software.jsp");
//            popup.forward(request, response);
//        }
//    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String meClasses = request.getParameter("ME");
        User willc = (User) getServletContext().getAttribute("User");
        pp = willc.scheduledClasses;

        if(meClasses.equals("schedule")){
            redirection(request, response, pp);
        }else {
            Course newCourse = new Course("C:\\Users\\willc\\IdeaProjects\\essentialDemoOff3\\src\\main\\java\\com\\example\\essentialdemo\\classtxtFolder\\" + meClasses+".txt");
           Class newClass = new Class(newCourse.name, newCourse.section, newCourse.creditHours, newCourse.days, newCourse.start, newCourse.morning, newCourse.end, newCourse.endMorning, newCourse.building, newCourse.room, newCourse.instructor, newCourse.prereqs);
           String message = willc.addClassToSchedule(newClass);
            System.out.println(message);
             pp = willc.scheduledClasses;
            if(message.equals("Did not pass prereqcheck")) {
                request.setAttribute("message", "Did not pass prerequisites.");

          }

            RequestDispatcher dispatcherrr = request.getRequestDispatcher("WEB-INF/MechanicalEngineering.jsp");
            dispatcherrr.forward(request, response);

        }

    }
}

