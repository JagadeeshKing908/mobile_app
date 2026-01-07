package com.mobilesales.servlet;

import com.mobilesales.dao.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            UserDAO dao = new UserDAO();
            dao.registerUser(username, email, password);

            response.sendRedirect("login.jsp");

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
