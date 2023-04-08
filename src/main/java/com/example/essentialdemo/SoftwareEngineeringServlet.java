package com.example.essentialdemo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "SoftwareEngineeringServlet", value = "/SoftwareEngineeringServlet")
public class SoftwareEngineeringServlet extends HttpServlet {

    private static ArrayList<String> classList = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String classCode = request.getParameter("classCode");


        if (classCode != null) {
            classList.add(classCode);
            System.out.println(classList);
        }

        String sendData = request.getParameter("CSC3102");
        System.out.println(sendData);

       if (sendData != null) {
            response.setContentType("button/html");
            request.setAttribute("variableHello", classList);
            RequestDispatcher dispatcherrr = request.getRequestDispatcher("WEB-INF/Software.jsp");
            dispatcherrr.forward(request, response);
        }
       // response.sendRedirect("WEB-INF/schedule.jsp");
    }
}

