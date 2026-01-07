package com.mobilesales.servlet;

import com.mobilesales.dao.UserDAO;

import javax.servlet.http.*;
import javax.servlet.ServletException;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserDAO dao = new UserDAO();

        if (dao.validateUser(username, password)) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            response.sendRedirect("index.jsp?loginSuccess=true");
        } else {
            response.sendRedirect("index.jsp?loginError=true");
        }
    }
}
