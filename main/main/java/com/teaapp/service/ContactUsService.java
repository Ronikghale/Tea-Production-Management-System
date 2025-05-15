package com.teaapp.service;

import com.teaapp.config.DbConfig;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ContactUsService {
    public static void saveMessage(String name, String email, String message) {
        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement ps = conn.prepareStatement(
                 "INSERT INTO contact_messages (name, email, message) VALUES (?, ?, ?)")) {

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, message);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
