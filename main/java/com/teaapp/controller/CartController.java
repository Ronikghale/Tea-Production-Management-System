package com.teaapp.controller;

import com.teaapp.model.CartItem;
import com.teaapp.model.Product;
import com.teaapp.service.CartService;
import com.teaapp.service.ProductService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/Cart")
public class CartController extends HttpServlet {
    private ProductService productService = new ProductService();
    private CartService cartService = new CartService();  // Initialize CartService

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Forward internally to Cart.jsp
        request.getRequestDispatcher("/WEB-INF/pages/Cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Map<Integer, CartItem> cart = (Map<Integer, CartItem>) session.getAttribute("cart");

        if (cart == null) {
            cart = new HashMap<>();
        }

        String action = request.getParameter("action");
        String productIdStr = request.getParameter("productId");

        try {
            int productId = Integer.parseInt(productIdStr);

            if ("add".equalsIgnoreCase(action)) {
                Product product = productService.getProductById(productId);
                if (product != null) {
                    cartService.addToCart(cart, product);
                }
            } else if ("remove".equalsIgnoreCase(action)) {
                cartService.removeFromCart(cart, productId);
            }

            session.setAttribute("cart", cart);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }

       
        response.sendRedirect(request.getContextPath() + "/Cart");
    }
}
