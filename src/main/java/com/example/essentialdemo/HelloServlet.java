package com.example.essentialdemo;

import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        int num = Integer.parseInt(request.getParameter("number"));
        request.setAttribute("myVariable", num);
        RequestDispatcher view = request.getRequestDispatcher("WEB-INF/hello.jsp");
        view.forward(request, response);

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String buttonClicked = request.getParameter("myButton");
//        if (buttonClicked != "" ){
//
//            request.setAttribute("myVariable", buttonClicked);
            RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/flowchart.jsp");
            dispatcher.forward(request, response);
//        }

    }

    public void destroy() {
    }
}