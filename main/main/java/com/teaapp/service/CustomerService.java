package com.teaapp.service;

import com.teaapp.config.DbConfig;
import com.teaapp.model.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerService {

    // Retrieve customer by ID
    public Customer getCustomerById(int customerId) {
        Customer customer = null;

        try (Connection conn = DbConfig.getDbConnection()) {
            String query = "SELECT * FROM customer WHERE customer_id = ?";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setInt(1, customerId);

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                customer = new Customer();
                customer.setCustomerId(rs.getInt("customer_id"));
                customer.setFirstName(rs.getString("first_name"));
                customer.setLastName(rs.getString("last_name"));
                customer.setEmailAddress(rs.getString("email_address"));
                customer.setPhoneNumber(rs.getString("phone_number"));
                customer.setPassword(rs.getString("password")); // only set if needed
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return customer;
    }

    // Update customer details
    public boolean updateCustomer(Customer customer) {
        boolean success = false;

        try (Connection conn = DbConfig.getDbConnection()) {
            String updateQuery = "UPDATE customer SET first_name = ?, last_name = ?, email_address = ?, phone_number = ? WHERE customer_id = ?";
            PreparedStatement stmt = conn.prepareStatement(updateQuery);
            stmt.setString(1, customer.getFirstName());
            stmt.setString(2, customer.getLastName());
            stmt.setString(3, customer.getEmailAddress());
            stmt.setString(4, customer.getPhoneNumber());
            stmt.setInt(5, customer.getCustomerId());

            int rowsAffected = stmt.executeUpdate();
            success = rowsAffected > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return success;
    }
}
