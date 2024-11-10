package academy.prog;

import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;

public class LoginServlet extends HttpServlet {

    private final ArrayList<User> users = new ArrayList<>();

    public synchronized void addUser(User user) {
        users.add(user);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        String lastname = request.getParameter("lastname");
        String age = request.getParameter("age");
        String color = request.getParameter("color");
        String country = request.getParameter("country");

        User user = new User(name, lastname, age, color, country);

        addUser(user);

        request.getSession(true).setAttribute("users", users);

        response.sendRedirect("userResponses.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    }
}
