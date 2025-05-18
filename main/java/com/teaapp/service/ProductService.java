package com.teaapp.service;

import com.teaapp.config.DbConfig;
import com.teaapp.model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductService {

    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();

        try (Connection conn = DbConfig.getDbConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM products")) {

            while (rs.next()) {
                Product p = new Product(
                    rs.getInt("id"),
                    rs.getString("name"),
                    rs.getString("description"),
                    rs.getDouble("price"),
                    rs.getString("image"),
                    rs.getInt("quantity")
                );
                products.add(p);
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace(); // Log the error
        }

        return products;
    }

    public Product getProductById(int productId) {
        Product product = null;
        String query = "SELECT * FROM products WHERE id = ?";

        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement pstmt = conn.prepareStatement(query)) {

            pstmt.setInt(1, productId);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                product = new Product(
                    rs.getInt("id"),
                    rs.getString("name"),
                    rs.getString("description"),
                    rs.getDouble("price"),
                    rs.getString("image"),
                    rs.getInt("quantity")
                );
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return product;
    }
}
