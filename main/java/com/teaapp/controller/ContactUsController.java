package com.teaapp.controller;

import com.teaapp.service.ContactUsService;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/contact")
public class ContactUsController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/Contact Us.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        ContactUsService.saveMessage(name, email, message);

        request.setAttribute("success", true);
        request.getRequestDispatcher("/WEB-INF/pages/Contact Us.jsp").forward(request, response);
    }
}
