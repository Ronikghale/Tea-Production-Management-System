package com.teaapp.model;

public class Order {
    private int orderId;
    private int teaId;
    private int customerId;
    private int quantity;
    private double totalPrice;
    private String status;
    private String orderDate;

    public Order() {}

    public Order(int orderId, int teaId, int customerId, int quantity,
                 double totalPrice, String status, String orderDate) {
        this.orderId = orderId;
        this.teaId = teaId;
        this.customerId = customerId;
        this.quantity = quantity;
        this.totalPrice = totalPrice;
        this.status = status;
        this.orderDate = orderDate;
    }

    // Getters and Setters
    
    // ...

    @Override
    public String toString() {
        return "Order{" +
                "orderId=" + orderId +
                ", teaId=" + teaId +
                ", customerId=" + customerId +
                ", quantity=" + quantity +
                ", totalPrice=" + totalPrice +
                ", status='" + status + '\'' +
                ", orderDate='" + orderDate + '\'' +
                '}';
    }
}
