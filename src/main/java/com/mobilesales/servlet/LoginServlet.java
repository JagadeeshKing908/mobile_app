package com.mobilesales.servlet;

import com.mobilesales.dao.UserDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        try {
            String username = req.getParameter("username");
            String password = req.getParameter("password");

            UserDAO dao = new UserDAO();
            String role = dao.login(username, password);

            if (role != null) {
                HttpSession session = req.getSession();
                session.setAttribute("username", username);
                session.setAttribute("role", role);

                if ("ADMIN".equals(role)) {
                    res.sendRedirect("admin.jsp");
                } else {
                    res.sendRedirect("mobiles");
                }
            } else {
                res.sendRedirect("login.jsp?error=1");
            }
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
