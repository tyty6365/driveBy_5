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


            UserFileConvertor w = new UserFileConvertor("C:\\Users\\willc\\IdeaProjects\\essentialDemoOff(2)\\src\\main\\java\\" + username);
            matchFound = true;
            getServletContext().setAttribute("myVariable",username);


            getServletContext().setAttribute("sharedObject", username);
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
