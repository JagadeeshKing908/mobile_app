package com.mobilesales.servlet;

import com.mobilesales.dao.MobileDAO;
import com.mobilesales.model.Mobile;

import javax.servlet.http.*;
import javax.servlet.ServletException;
import java.io.IOException;

public class MobileDetailsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        try {
            MobileDAO dao = new MobileDAO();
            Mobile mobile = dao.getMobileById(id);

            request.setAttribute("mobile", mobile);
            request.getRequestDispatcher("mobile-details.jsp")
                   .forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException("Error loading mobile details", e);
        }
    }
}
