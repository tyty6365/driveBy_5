package com.example.essentialdemo;

import com.example.essentialdemo.Class;
import com.example.essentialdemo.Course;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "SecondHelloServlet", value = "/SecondHelloServlet")
public class HomePage extends HttpServlet {
    String username;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

// Get the value of the input text element
        username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean matchFound = false;
        boolean passwordMatch = false;
        try {


            UserFileConvertor w = new UserFileConvertor("C:\\Users\\xandr\\IdeaProjects\\essentialDemoOff\\src\\main\\java\\com\\example\\essentialdemo\\classtxtFolder\\" + username);
            ArrayList<Class> wClasses = new ArrayList<>();
            for (int i = 0; i < w.getScheduledClasses().size(); i++) {

                if(w.getScheduledClasses().get(i).equals("PLACEHOLDER")) {}else{
                    String testClass = w.getScheduledClasses().get(i);
                    Course a = new Course("C:\\Users\\xandr\\IdeaProjects\\essentialDemoOff\\src\\main\\java\\com\\example\\essentialdemo\\classtxtFolder\\" + testClass + ".txt");
                    wClasses.add(new Class(a.name, a.section, a.creditHours, a.days, a.start, a.morning, a.end, a.endMorning, a.building, a.room, a.instructor, a.prereqs));
                }
            }
            User willc = new User(w.getUsername(), w.getPassword(), w.getFinishedClasses());
            for (int i = 0; i < wClasses.size(); i++) {
                willc.fileAddToSchedule(wClasses.get(i));
            }
            request.setAttribute("scheduled",willc.scheduledClasses);
//            boolean test = true;
//            if(test){
//                request.setAttribute("scheduled",willc.scheduledClasses);
//                RequestDispatcher schedule = request.getRequestDispatcher("WEB-INF/CurrentSchedule.jsp");
//                schedule.forward(request, response);
//            }


            getServletContext().setAttribute("User",willc);
            getServletContext().setAttribute("Username",username);
            request.setAttribute("User", willc);
            if(w.getUsername().equals(username)){
                matchFound = true;
            }
            if(w.getPassword().equals(password)){
                passwordMatch = true;
            }

                if (matchFound && passwordMatch) {
                    response.setContentType("text/html");
                    request.setAttribute("myVariable", username);

                    RequestDispatcher view = request.getRequestDispatcher("WEB-INF/hello.jsp");
                    view.forward(request, response);
                    //response.sendRedirect("MechanicalEngineeringServlet?param1="+username);
                    //response.sendRedirect("MechanicalEngineeringServlet?param1=898129754");

                    System.out.println("Match found!");
                }else if(!matchFound){
                    response.sendRedirect("WEB-INF/89numberwrong.jsp");

                    System.out.println("No match found.");
                }else if(!passwordMatch){
                    response.sendRedirect("WEB-INF/Passwordwrong.jsp");
                }else{
                    response.sendRedirect("WEB-INF/ErrorPage.jsp");
                }




        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        }
    }
}
