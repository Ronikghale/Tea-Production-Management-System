package com.teaapp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.teaapp.model.Product;
import com.teaapp.service.ProductManagementService;

/**
 * Servlet implementation class ViewProductController
 */
@WebServlet("/viewproduct")
public class ViewProductController extends HttpServlet {
    private ProductManagementService productService = new ProductManagementService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Product> products = productService.getAllProducts();
        request.setAttribute("products", products);
        request.getRequestDispatcher("/WEB-INF/pages/viewproducts.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
