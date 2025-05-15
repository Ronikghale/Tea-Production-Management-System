package com.teaapp.controller;

import com.teaapp.model.Product;
import com.teaapp.service.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(asyncSupported = true, urlPatterns = {"/product"})
public class ProductController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Fetch all products from service
        List<Product> productList = productService.getAllProducts();

        // Set the products in request scope
        request.setAttribute("products", productList);

        // Forward to the Product JSP page
        request.getRequestDispatcher("/WEB-INF/pages/Product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        List<Integer> cart = (List<Integer>) session.getAttribute("cart");

        if (cart == null) {
            cart = new ArrayList<>();
        }

        if ("add".equalsIgnoreCase(action)) {
            try {
                int productId = Integer.parseInt(request.getParameter("productId"));
                cart.add(productId); // Simple product ID storage
                session.setAttribute("cart", cart);
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }

        // ✅ Redirect to Cart servlet, not directly to a JSP (WEB-INF can't be accessed this way)
        response.sendRedirect(request.getContextPath() + "/Cart");
    }
}
