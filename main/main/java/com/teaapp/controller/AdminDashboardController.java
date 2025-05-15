package com.teaapp.controller;

import com.teaapp.service.AdminDashboardService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/admindashboard")
public class AdminDashboardController extends HttpServlet {

    private static final long serialVersionUID = 1L;
	private AdminDashboardService dashboardService;

    @Override
    public void init() throws ServletException {
        dashboardService = new AdminDashboardService(); // Initialize service
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        // Correct session role check
        String role = (session != null) ? (String) session.getAttribute("role") : null;
        if (session == null || !"admin".equals(role)) {
            response.sendRedirect(request.getContextPath() + "/Login");
            return;
        }

        // Fetch data
        int totalProducts = dashboardService.getTotalProducts();
        int totalCustomers = dashboardService.getTotalCustomers();

        // Set attributes
        request.setAttribute("totalProducts", totalProducts);
        request.setAttribute("totalCustomers", totalCustomers);

        // Forward to JSP
        request.getRequestDispatcher("/WEB-INF/pages/adminDashboard.jsp").forward(request, response);
    }
}
