package com.teaapp.controller;

import java.io.IOException;

import com.teaapp.model.Customer;
import com.teaapp.service.LoginService;
import com.teaapp.util.ValidationUtil;
import com.teaapp.util.sessionutil; 

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Handles customer login requests for the TeaApp, authenticating users and managing sessions.
 */
@WebServlet(name = "LoginController", urlPatterns = "/Login", asyncSupported = true)
public class LoginController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final LoginService loginService = new LoginService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Customer customer = (Customer) sessionutil.getAttribute(req, "customer");
        String role = (String) sessionutil.getAttribute(req, "role");

        if (customer != null) {
            System.out.println("Active session found for customer ID: " + customer.getCustomerId() + ", Role: " + role);

            String redirectPath = "admin".equals(role) ? "/dashboard" : "/home";
            System.out.println("Redirecting logged-in user to: " + redirectPath);
            resp.sendRedirect(req.getContextPath() + redirectPath);
            return;
        }

        System.out.println("No active session. Forwarding to login form.");
        req.getRequestDispatcher("/WEB-INF/pages/Login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        System.out.println("Attempting login for email: " + email);

        if (email == null) {
            System.out.println("Error: Email parameter is null.");
            forwardWithError(req, resp, "Email is required.");
            return;
        }

        String validationError = validateLoginForm(req);
        if (validationError != null) {
            System.out.println("Login form validation failed: " + validationError);
            forwardWithError(req, resp, validationError);
            return;
        }

        Customer customerFromDb = loginService.findByEmail(email);

        if (customerFromDb == null) {
            System.out.println("No user found with email: " + email);
            forwardWithError(req, resp, "Invalid email or password.");
            return;
        }

        boolean isPasswordValid = loginService.isPasswordValid(customerFromDb.getPassword(), password, email);

        if (!isPasswordValid) {
            System.out.println("Password mismatch for email: " + email);
            forwardWithError(req, resp, "Invalid email or password.");
            return;
        }

        // Success - set session attributes using sessionutil
        sessionutil.setAttribute(req, "customer", customerFromDb);

        if ("admin@teaapp.com".equals(email)) {
            sessionutil.setAttribute(req, "role", "admin");
            sessionutil.setAttribute(req, "adminName", customerFromDb.getFirstName()); // optional
            resp.sendRedirect(req.getContextPath() + "/admindashboard");
        }
        else {
            sessionutil.setAttribute(req, "role", "customer");
            System.out.println("Customer logged in.");
            resp.sendRedirect(req.getContextPath() + "/home");
        }
    }

    private String validateLoginForm(HttpServletRequest req) {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        if (ValidationUtil.isNullOrEmpty(email)) {
            return "Email is required.";
        }
        if (!ValidationUtil.isValidEmail(email)) {
            return "Invalid email format.";
        }
        if (ValidationUtil.isNullOrEmpty(password)) {
            return "Password is required.";
        }
        return null;
    }

    private void forwardWithError(HttpServletRequest req, HttpServletResponse resp, String message)
            throws ServletException, IOException {
        req.setAttribute("error", message);
        req.setAttribute("email", req.getParameter("email"));
        System.out.println("Forwarding to login page with error: '" + message + "' and email: '" + req.getParameter("email") + "'.");
        req.getRequestDispatcher("/WEB-INF/pages/Login.jsp").forward(req, resp);
    }
}
