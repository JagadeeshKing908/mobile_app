package com.mobilesales.servlet;

import com.mobilesales.dao.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserDAO dao = new UserDAO();

        if (dao.validateUser(email, password)) {
            request.getSession().setAttribute("user", email);
            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("login.jsp?error=invalid");
        }
    }
}
