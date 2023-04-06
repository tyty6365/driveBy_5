import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "MechanicalEngineeringServlet", value = "/MechanicalEngineeringServlet")
public class MechanicalEngineeringServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String meClasses = request.getParameter("ME");
        if(meClasses.equals("schedule")){
            RequestDispatcher dispatcherr = request.getRequestDispatcher("WEB-INF/Software.jsp");
            dispatcherr.forward(request, response);
        }else {
            String username = (String) getServletContext().getAttribute("Username");
            User willc = (User) getServletContext().getAttribute("User");
            Course newCourse = new Course("C:\\Users\\willc\\IdeaProjects\\essentialDemoOff(2)\\src\\main\\java\\" + meClasses);
            Class newClass = new Class(newCourse.name, newCourse.section, newCourse.creditHours, newCourse.days, newCourse.start, newCourse.morning, newCourse.end, newCourse.endMorning, newCourse.building, newCourse.room, newCourse.instructor, newCourse.prereqs);
            willc.addClassToSchedule(newClass);

            ArrayList<Class> pp = willc.scheduledClasses;
            System.out.println(pp.toString());
            request.setAttribute("pp", pp);



            RequestDispatcher dispatcherrr = request.getRequestDispatcher("WEB-INF/MechanicalEngineering.jsp");
            dispatcherrr.forward(request, response);
        }
    }
}

