package com.mobilesales.servlet;

import com.mobilesales.config.DBConfig;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;

public class AdminServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        HttpSession session = req.getSession();
        if (!"ADMIN".equals(session.getAttribute("role"))) {
            res.sendRedirect("login.jsp");
            return;
        }

        try {
            Connection con = DBConfig.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO mobiles(name,price,image_folder) VALUES(?,?,?)");

            ps.setString(1, req.getParameter("name"));
            ps.setInt(2, Integer.parseInt(req.getParameter("price")));
            ps.setString(3, req.getParameter("folder"));

            ps.executeUpdate();
            res.sendRedirect("admin.jsp");
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
