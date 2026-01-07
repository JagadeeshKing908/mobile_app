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
        dao.registerUser(username, password, email);

        HttpSession session = request.getSession();
        session.setAttribute("username", username);

        response.sendRedirect("index.jsp");
    }
}
