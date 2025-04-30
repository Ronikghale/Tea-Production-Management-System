package com.teaapp.controller;

import com.teaapp.service.AdminDashboardService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/admin/dashboard")
public class AdminDashboardServlet extends HttpServlet {

    private AdminDashboardService dashboardService;

    @Override
    public void init() throws ServletException {
        dashboardService = new AdminDashboardService(); // Initialize service
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("adminName") == null) {
            response.sendRedirect(request.getContextPath() + "/AdminLogin");
            return;
        }

        // Fetch dashboard data
        int totalProducts = dashboardService.getTotalProducts();
        int totalCustomers = dashboardService.getTotalCustomers();
        int pendingOrders = dashboardService.getPendingOrders();
        int lowInventory = dashboardService.getLowInventoryItems();

        // Set attributes
        request.setAttribute("totalProducts", totalProducts);
        request.setAttribute("totalCustomers", totalCustomers);
        request.setAttribute("pendingOrders", pendingOrders);
        request.setAttribute("lowInventory", lowInventory);

        // Forward to JSP
        request.getRequestDispatcher("/adminDashboard.jsp").forward(request, response);
    }
}
