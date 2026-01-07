package com.mobilesales.servlet;

import com.mobilesales.dao.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            UserDAO dao = new UserDAO();

            boolean isValid = dao.validateUser(username, password);

            if (isValid) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                response.sendRedirect("index.jsp");
            } else {
                response.sendRedirect("login.jsp?error=1");
            }

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
