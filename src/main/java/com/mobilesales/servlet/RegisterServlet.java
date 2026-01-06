package com.mobilesales.servlet;

import com.mobilesales.dao.UserDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        try {
            String username = req.getParameter("username");
            String password = req.getParameter("password");

            UserDAO dao = new UserDAO();
            boolean success = dao.registerUser(username, password);

            if (success) {
                res.sendRedirect("login.jsp");
            } else {
                res.sendRedirect("register.jsp?error=1");
            }
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
