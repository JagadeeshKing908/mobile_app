package com.mobilesales.servlet;

import com.mobilesales.dao.UserDAO;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserDAO dao = new UserDAO();

        try {
            if (dao.login(username, password)) {
                // Create a new session if login succeeds
                HttpSession session = request.getSession(true);
                session.setAttribute("username", username);
                // Redirect with success message
                response.sendRedirect("index.jsp?loginSuccess=true");
            } else {
                // Redirect with error message
                response.sendRedirect("index.jsp?loginError=true");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("index.jsp?loginError=true");
        }
    }
}
