package lk.jiat.action.controller;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import lk.jiat.action.model.User;
import lk.jiat.action.model.UserRegistry;

import java.io.IOException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username").trim();
        String email = request.getParameter("email").trim();
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        if (!password.equals(confirmPassword)) {
            request.setAttribute("message", "Passwords do not match.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        if (UserRegistry.isUsernameTaken(username)) {
            request.setAttribute("message", "Username already taken.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        if (UserRegistry.isEmailTaken(email)) {
            request.setAttribute("message", "Email already registered.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        User user = new User(username, email, password);
        UserRegistry.register(user);

        request.setAttribute("message", "Registration successful! Please login.");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
}
