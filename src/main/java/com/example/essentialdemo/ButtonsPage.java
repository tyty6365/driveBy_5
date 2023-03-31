package com.example.essentialdemo;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
//import org.json.simple.JSONObject;

@WebServlet("/hello-servlet")
public class ButtonsPage extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {}
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("page");
        switch(action) {
            case "WEB-INF/index.jsp":

                RequestDispatcher dispatcher1 = request.getRequestDispatcher("index.jsp");
                dispatcher1.forward(request, response);
                break;
            case "WEB-INF/flowchart.jsp":

                RequestDispatcher dispatcher2 = request.getRequestDispatcher("WEB-INF/flowchart.jsp");
                dispatcher2.forward(request, response);
                break;

            case "WEB-INF/IT_Support.jsp":

                RequestDispatcher dispatcher3 = request.getRequestDispatcher("WEB-INF/IT_Support.jsp");
                dispatcher3.forward(request, response);
                break;
            case "WEB-INF/FAQ.jsp":

                RequestDispatcher dispatcher4 = request.getRequestDispatcher("WEB-INF/FAQ.jsp");
                dispatcher4.forward(request, response);
                break;
            case "WEB-INF/MechanicalEngineering.jsp":

                RequestDispatcher dispatcher5 = request.getRequestDispatcher("WEB-INF/MechanicalEngineering.jsp");
                dispatcher5.forward(request, response);
                break;
            case "WEB-INF/ChemicalEngineering.jsp":

                RequestDispatcher dispatcher6 = request.getRequestDispatcher("WEB-INF/ChemicalEngineering.jsp");
                dispatcher6.forward(request, response);
                break;
            case "WEB-INF/CivilEngineering.jsp":

                RequestDispatcher dispatcher7 = request.getRequestDispatcher("WEB-INF/CivilEngineering.jsp");
                dispatcher7.forward(request, response);
                break;

            case "WEB-INF/ComputerEngineering.jsp":

                RequestDispatcher dispatcher8 = request.getRequestDispatcher("WEB-INF/ComputerEngineering.jsp");
                dispatcher8.forward(request, response);
                break;
            case "WEB-INF/ElectricalEngineering.jsp":

                RequestDispatcher dispatcher9 = request.getRequestDispatcher("WEB-INF/ElectricalEngineering.jsp");
                dispatcher9.forward(request, response);
                break;
            case "WEB-INF/SoftwareEngineering.jsp":

                RequestDispatcher dispatcher10 = request.getRequestDispatcher("WEB-INF/SoftwareEngineering.jsp");
                dispatcher10.forward(request, response);
                break;

                default:
                response.sendRedirect("error.html");
                System.out.println("default");
                break;
        }


    }

    public void destroy() {
    }
}

