package com.teaapp.service;

import com.teaapp.config.DbConfig;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDashboardService {

    public int getTotalProducts() {
        String sql = "SELECT COUNT(*) FROM products";
        return getCount(sql);
    }

    public int getTotalCustomers() {
        String sql = "SELECT COUNT(*) FROM customers";
        return getCount(sql);
    }

    public int getPendingOrders() {
        String sql = "SELECT COUNT(*) FROM orders WHERE status = 'Pending'";
        return getCount(sql);
    }

    public int getLowInventoryItems() {
        String sql = "SELECT COUNT(*) FROM inventory WHERE quantity < 10";
        return getCount(sql);
    }

    private int getCount(String query) {
        int count = 0;
        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement ps = conn.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {

            if (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return count;
    }
}
