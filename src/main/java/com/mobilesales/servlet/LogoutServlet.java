package com.mobilesales.servlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        // Invalidate the current session
        HttpSession session = request.getSession(false); // get existing session, don't create new
        if (session != null) {
            session.invalidate();
        }

        // Redirect user to login page
        response.sendRedirect("login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        // Optional: handle POST logout requests same way
        doGet(request, response);
    }
}
