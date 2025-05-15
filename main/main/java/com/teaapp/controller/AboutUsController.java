package com.teaapp.controller;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/about")
public class AboutUsController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/About us.jsp").forward(request, response);
    }
}
