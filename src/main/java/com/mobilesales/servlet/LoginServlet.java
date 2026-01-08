package com.mobilesales.servlet;

import com.mobilesales.dao.UserDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        UserDAO dao = new UserDAO();

        if (dao.validateUser(email, password)) {
            HttpSession session = req.getSession();
            session.setAttribute("user", email);
            res.sendRedirect("index.jsp");
        } else {
            res.sendRedirect("login.jsp?error=true");
        }
    }
}
