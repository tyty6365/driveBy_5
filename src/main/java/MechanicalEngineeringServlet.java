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
        System.out.println(meClasses);
        String username = (String) getServletContext().getAttribute("myVariable");
        System.out.println(username);



        UserFileConvertor w = new UserFileConvertor("C:\\Users\\willc\\IdeaProjects\\essentialDemoOff(2)\\src\\main\\java\\" + username);//change when put into website
        ArrayList<Class> wClasses = new ArrayList<>();
        for (int i = 0; i < w.getScheduledClasses().size(); i++) {
            String testClass = w.getScheduledClasses().get(i);
            Course a = new Course("C:\\Users\\willc\\IdeaProjects\\essentialDemoOff(2)\\src\\main\\java\\" + testClass);
            wClasses.add(new Class(a.name, a.section, a.creditHours, a.days, a.start, a.morning, a.end, a.endMorning, a.building, a.room, a.instructor, a.prereqs));
        }
        User willc = new User(w.getUsername(), w.getPassword(), w.getFinishedClasses());
        for (int i = 0; i < wClasses.size(); i++) {
            willc.fileAddToSchedule(wClasses.get(i));
        }
        Course newCourse = new Course("C:\\Users\\willc\\IdeaProjects\\essentialDemoOff(2)\\src\\main\\java\\" + meClasses);
        Class newClass = new Class(newCourse.name, newCourse.section, newCourse.creditHours, newCourse.days, newCourse.start, newCourse.morning, newCourse.end, newCourse.endMorning, newCourse.building, newCourse.room, newCourse.instructor, newCourse.prereqs);
        willc.addClassToSchedule(newClass);
        RequestDispatcher dispatcherrr = request.getRequestDispatcher("WEB-INF/CyberSecurity.jsp");
        dispatcherrr.forward(request, response);
    }



    }

