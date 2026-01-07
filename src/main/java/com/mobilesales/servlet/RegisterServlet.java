package com.mobilesales.servlet;

import com.mobilesales.dao.UserDAO;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        UserDAO dao = new UserDAO();
        try {
            dao.registerUser(username, password, email);
            response.sendRedirect("index.jsp?registerSuccess=true");
        } catch (Exception e) {
            response.sendRedirect("index.jsp?registerError=true");
        }
    }
}
