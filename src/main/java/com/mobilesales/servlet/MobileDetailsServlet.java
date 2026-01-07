package com.mobilesales.servlet;

import com.mobilesales.dao.MobileDAO;
import com.mobilesales.model.Mobile;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/mobile-details")
public class MobileDetailsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        MobileDAO dao = new MobileDAO();
        Mobile mobile = dao.getMobileById(id);

        request.setAttribute("mobile", mobile);
        request.getRequestDispatcher("mobile-details.jsp").forward(request, response);
    }
}
