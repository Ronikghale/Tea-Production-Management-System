package com.teaapp.service;

import com.teaapp.config.DbConfig;
import com.teaapp.model.CartItem;
import com.teaapp.model.Product;

import java.sql.*;
import java.util.Map;

public class CartService {

    public void addToCart(Map<Integer, CartItem> cart, Product product) {
        int productId = product.getId();
        if (cart.containsKey(productId)) {
            cart.get(productId).incrementQuantity();
        } else {
            cart.put(productId, new CartItem(product, 1));
        }

        // Save to DB as pending
        saveCartItemToDb(product.getId(), 1); // Always insert as 1; could update logic for quantity later
    }

    private void saveCartItemToDb(int productId, int quantity) {
        String insertSQL = "INSERT INTO cart_items (product_id, quantity, status) VALUES (?, ?, 'pending')";

        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(insertSQL)) {

            stmt.setInt(1, productId);
            stmt.setInt(2, quantity);
            stmt.executeUpdate();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void removeFromCart(Map<Integer, CartItem> cart, int productId) {
        cart.remove(productId);
        deleteCartItemFromDb(productId);
    }

    private void deleteCartItemFromDb(int productId) {
        String deleteSQL = "DELETE FROM cart_items WHERE product_id = ? AND status = 'pending'";

        try (Connection conn = DbConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(deleteSQL)) {

            stmt.setInt(1, productId);
            stmt.executeUpdate();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
