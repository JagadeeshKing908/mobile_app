package com.mobilesales.servlet;

import com.mobilesales.dao.UserDAO;


import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String user = req.getParameter("username");
        String pass = req.getParameter("password");

        UserDAO dao = new UserDAO();
        dao.registerUser(user, pass);

        resp.sendRedirect("login.jsp");
    }
}
