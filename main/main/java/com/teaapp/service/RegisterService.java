package com.teaapp.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.teaapp.config.DbConfig;
import com.teaapp.model.Customer;

/**
 * RegisterService handles the registration of new customers.
 * It manages database interactions for customer registration.
 */
public class RegisterService {

    private Connection dbConn;

    /**
     * Constructor initializes the database connection.
     */
    public RegisterService() {
        try {
            this.dbConn = DbConfig.getDbConnection();
        } catch (SQLException | ClassNotFoundException ex) {
            System.err.println("Database connection error: " + ex.getMessage());
            ex.printStackTrace();
        }
    }

    /**
     * Registers a new customer in the database.
     *
     * @param customer the customer details to be registered
     * @return Boolean indicating the success of the operation
     */
    public Boolean addCustomer(Customer customer) {
        if (dbConn == null) {
            System.err.println("Database connection is not available.");
            return null;
        }

        String insertQuery = "INSERT INTO customer (first_name, last_name, email_address, phone_number, password) "
                           + "VALUES (?, ?, ?, ?, ?)";

        try (PreparedStatement stmt = dbConn.prepareStatement(insertQuery)) {
            stmt.setString(1, customer.getFirstName());
            stmt.setString(2, customer.getLastName());
            stmt.setString(3, customer.getEmailAddress());
            stmt.setString(4, customer.getPhoneNumber());
            stmt.setString(5, customer.getPassword());

            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            System.err.println("Error during customer registration: " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }
}
