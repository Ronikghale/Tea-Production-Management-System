package com.teaapp.service;

import com.teaapp.model.CartItem;
import com.teaapp.model.Product;

import java.util.Map;

public class CartService {

    public void addToCart(Map<Integer, CartItem> cart, Product product) {
        int productId = product.getId();
        if (cart.containsKey(productId)) {
            cart.get(productId).incrementQuantity();
        } else {
            cart.put(productId, new CartItem(product, 1));
        }
    }

    public void removeFromCart(Map<Integer, CartItem> cart, int productId) {
        cart.remove(productId);
    }
}
