package com.mobilesales.servlet;

import com.mobilesales.dao.UserDAO;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        if (new UserDAO().validateUser(email, password)) {
            req.getSession().setAttribute("user", email);
            res.sendRedirect("index.jsp");
        } else {
            res.sendRedirect("index.jsp?error=true");
        }
    }
}
