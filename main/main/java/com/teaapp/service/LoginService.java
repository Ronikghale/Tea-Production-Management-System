package com.teaapp.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.teaapp.config.DbConfig;
import com.teaapp.model.Customer;
import com.teaapp.util.PasswordUtil;

public class LoginService {

    private Connection dbConn;
    private boolean isConnectionError = false;

    public LoginService() {
        try {
            dbConn = DbConfig.getDbConnection();
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
            isConnectionError = true;
        }
    }

    /**
     * Retrieves customer by email, returns null if not found or DB error.
     * 
     * @param email the customer email
     * @return Customer with encrypted password loaded
     */
    public Customer findByEmail(String email) {
        if (isConnectionError) {
            System.out.println("Database connection failed.");
            return null;
        }

        String query = "SELECT customer_id, first_name, last_name, email_address, password FROM customer WHERE email_address = ?";
        try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
            stmt.setString(1, email);
            ResultSet result = stmt.executeQuery();

            if (result.next()) {
                Customer customer = new Customer();
                customer.setCustomerId(result.getInt("customer_id"));
                customer.setFirstName(result.getString("first_name"));
                customer.setLastName(result.getString("last_name"));
                customer.setEmailAddress(result.getString("email_address"));
                customer.setPassword(result.getString("password")); // encrypted password
                return customer;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    /**
     * Validates the plain password by decrypting stored encrypted one.
     * 
     * @param encryptedPassword Encrypted password from DB
     * @param inputPlainPassword Password entered during login
     * @param email Email used for encryption key
     * @return true if decrypted password matches the input
     */
    public boolean isPasswordValid(String encryptedPassword, String inputPlainPassword, String email) {
        try {
            String decryptedPassword = PasswordUtil.decrypt(encryptedPassword, email);
            return decryptedPassword != null && decryptedPassword.equals(inputPlainPassword);
        } catch (Exception e) {
            System.out.println("Decryption error: " + e.getMessage());
            return false;
        }
    }
}
