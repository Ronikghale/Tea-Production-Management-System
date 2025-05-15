package com.teaapp.service;

import com.teaapp.config.DbConfig;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDashboardService {

    public int getTotalProducts() {
        return getCount("SELECT * FROM products");
    }

    public int getTotalCustomers() {
        return getCount("SELECT * FROM customer");
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
