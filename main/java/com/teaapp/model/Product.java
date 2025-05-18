package com.teaapp.model;

public class Product {
    private int id;
    private String name;
    private String description;
    private double price;
    private String image;
    private int quantity;  

    // Default constructor
    public Product() {
    }

    // Full constructor
    public Product(int id, String name, String description, double price, String image, int quantity) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.image = image;
        this.quantity = quantity;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getQuantity() {  
        return quantity;
    }

    public void setQuantity(int quantity) {  
        this.quantity = quantity;
    }
}
