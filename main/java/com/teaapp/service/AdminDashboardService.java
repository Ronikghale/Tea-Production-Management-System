package com.teaapp.service;

import com.teaapp.config.DbConfig;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDashboardService {

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

    public int getTotalProducts1() {
        return getCount("SELECT COUNT(*) FROM products");
    }

    public int getTotalCustomers1() {
        return getCount("SELECT COUNT(*) FROM customer");
    }

    public int getPendingOrders() {
        return getCount("SELECT COUNT(*) FROM cart_items WHERE status = 'pending'");
    }


    public int getLowInventory() {
        return getCount("SELECT COUNT(*) FROM products WHERE quantity <= 5");
    }

}
