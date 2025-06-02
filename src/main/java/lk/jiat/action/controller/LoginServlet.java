package lk.jiat.action.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import lk.jiat.action.model.UserRegistry;
import lk.jiat.action.model.User;

import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String input = request.getParameter("username").trim();  // username or email
        String password = request.getParameter("password");

       User user = UserRegistry.getUserByUsernameOrEmail(input);

        if (user != null && user.getPassword().equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("loggedUser", user.getUsername());

            response.sendRedirect("home.jsp");
        } else {
            request.setAttribute("message", "Invalid username/email or password.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
