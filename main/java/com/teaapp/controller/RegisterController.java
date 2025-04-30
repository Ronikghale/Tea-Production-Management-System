package com.teaapp.controller;

import java.io.IOException;
import com.teaapp.model.Customer;
import com.teaapp.service.RegisterService;
import com.teaapp.util.PasswordUtil;
import com.teaapp.util.ValidationUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/Register")  // ✅ Changed to lowercase to match URL patterns
public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private final RegisterService registerService = new RegisterService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/pages/Register.jsp").forward(req, resp);  // ✅ Fixed casing for JSP file
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String errorMessage = validateForm(req);
            if (errorMessage != null) {
                forwardWithError(req, resp, errorMessage);
                return;
            }

            Customer customer = extractCustomer(req);
            Boolean isAdded = registerService.addCustomer(customer);

            if (isAdded == null) {
                forwardWithError(req, resp, "Server error. Please try again later.");
            } else if (isAdded) {
                // Set success message and forward to login page
                req.setAttribute("success", "Your account has been created successfully!");
                req.getRequestDispatcher("/WEB-INF/pages/Login.jsp").forward(req, resp);
                // Note: Using forward instead of redirect to preserve the success message
            } else {
                forwardWithError(req, resp, "Registration failed. Please try again.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            forwardWithError(req, resp, "Unexpected error occurred.");
        }
    }

    private String validateForm(HttpServletRequest req) {
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");

        if (ValidationUtil.isNullOrEmpty(firstName)) return "First name is required.";
        if (ValidationUtil.isNullOrEmpty(lastName)) return "Last name is required.";
        if (ValidationUtil.isNullOrEmpty(email)) return "Email is required.";
        if (!ValidationUtil.isValidEmail(email)) return "Invalid email format.";
        if (ValidationUtil.isNullOrEmpty(phone)) return "Phone number is required.";
        if (ValidationUtil.isNullOrEmpty(password)) return "Password is required.";
        if (!ValidationUtil.isValidPassword(password)) return "Password must be at least 8 characters with an uppercase letter, number, and symbol.";
        if (!ValidationUtil.doPasswordsMatch(password, confirmPassword)) return "Passwords do not match.";

        return null;
    }

    private Customer extractCustomer(HttpServletRequest req) throws Exception {
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String password = PasswordUtil.encrypt(email, req.getParameter("password")); // Encrypt password using email
        return new Customer(0, firstName, lastName, email, phone, password);
    }

    private void forwardWithError(HttpServletRequest req, HttpServletResponse resp, String message) throws ServletException, IOException {
        req.setAttribute("error", message);
        req.setAttribute("firstName", req.getParameter("firstName"));
        req.setAttribute("lastName", req.getParameter("lastName"));
        req.setAttribute("email", req.getParameter("email"));
        req.setAttribute("phone", req.getParameter("phone"));
        req.getRequestDispatcher("/WEB-INF/pages/Register.jsp").forward(req, resp);  // 
}
}