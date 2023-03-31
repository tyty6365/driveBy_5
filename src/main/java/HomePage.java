import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

@WebServlet(name = "SecondHelloServlet", value = "/SecondHelloServlet")
public class HomePage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


// Get the value of the input text element
            String inputValue = request.getParameter("input");
            boolean matchFound = false;
            try {
                File file = new File("/Users/tscott/Documents/GitHub/essentialDemoOff/src/main/java/database1.txt");

                FileReader fr = new FileReader(file);
                BufferedReader br = new BufferedReader(fr);
                String line = br.readLine();
                while ((line = br.readLine()) != null) {
                    System.out.println(line + inputValue);//checking
                    if (line.equals(inputValue)) {
                        matchFound = true;
                        break;
                    }
                }
                // Close the file reader and buffered reader
                br.close();
                fr.close();

                // Display a message to the user indicating success or failure
                if (matchFound) {
                    response.setContentType("text/html");
                    request.setAttribute("myVariable", inputValue);
                    RequestDispatcher view = request.getRequestDispatcher("WEB-INF/hello.jsp");
                    view.forward(request, response);
                    //response.sendRedirect("WEB-INF/hello.jsp");

                    System.out.println("Match found!");
                } else {
                    response.sendRedirect("WEB-INF/ErrorPage.jsp");

                    System.out.println("No match found.");
                }

            } catch (IOException e) {
                System.out.println("Error reading file: " + e.getMessage());
            } //STOPS HERE
    }
}
