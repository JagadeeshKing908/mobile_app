package com.mobilesales.servlet;

import com.mobilesales.dao.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            UserDAO dao = new UserDAO();
            boolean isValidUser = dao.login(username, password);

            if (isValidUser) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);

                // After login show mobiles
                response.sendRedirect("index.jsp");
            } else {
                // Invalid credentials
                response.sendRedirect("login.jsp?error=invalid");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=db");
        }
    }
}
