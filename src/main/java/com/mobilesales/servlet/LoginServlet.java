package com.mobilesales.servlet;

import com.mobilesales.dao.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserDAO dao = new UserDAO();
        String dbPassword = dao.getPasswordByUsername(username);

        if (dbPassword != null && dbPassword.equals(password)) {
            response.sendRedirect("home.html");
        } else {
            response.sendRedirect("index.html?error=invalid");
        }

    } // end of doPost

} // end of LoginServlet class
