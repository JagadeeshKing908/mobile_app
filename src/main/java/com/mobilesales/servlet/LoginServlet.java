package com.mobilesales.servlet;

import com.mobilesales.dao.UserDAO;
import com.mobilesales.util.PasswordUtil;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");

        try {
            String dbPassword = UserDAO.getPasswordByUsername(username);

            if (dbPassword != null && PasswordUtil.checkPassword(password, dbPassword)) {
                resp.getWriter().println("Login Successful");
            } else {
                resp.getWriter().println("Invalid Username or Password");
            }

        } catch (Exception e) {
            resp.getWriter().println("Internal Server Error");
        }
    }
}
