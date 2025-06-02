package lk.jiat.action.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Session invalidate කරලා user logout කරයි
        HttpSession session = request.getSession(false); // Session එක තිබුනොත් ගන්න
        if (session != null) {
            session.invalidate();
        }

        // Logout වෙලා login page එකට redirect කරන්න
        response.sendRedirect("login.jsp");
    }
}
