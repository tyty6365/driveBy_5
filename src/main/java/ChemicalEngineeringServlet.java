import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ChemicalEngineeringServlet", value = "/ChemicalEngineeringServlet")
public class ChemicalEngineeringServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("CHEENG");
        System.out.println(action);
        switch (action) {
            case "CHE 1100":
                request.setAttribute("message", "CHE 1100");
                RequestDispatcher dispatcher1 = request.getRequestDispatcher("WEB-INF/ChemicalEngineering.jsp");
                dispatcher1.forward(request, response);
                break;
            case "CHEM 1202":
                request.setAttribute("message", "CHEM 1202");
                RequestDispatcher dispatcher2 = request.getRequestDispatcher("WEB-INF/ChemicalEngineering.jsp");
                dispatcher2.forward(request, response);
                break;
            case "CHEM 2171":
                request.setAttribute("message", "CHEM 2171");
                RequestDispatcher dispatcher3 = request.getRequestDispatcher("WEB-INF/ChemicalEngineering.jsp");
                dispatcher3.forward(request, response);
                break;
            case "CHEM 2176":
                request.setAttribute("message", "CHEM 2176");
                RequestDispatcher dispatcher4 = request.getRequestDispatcher("WEB-INF/schedule.jsp");
                dispatcher4.forward(request, response);
                break;
            default:
                break;
        }
    }

}

