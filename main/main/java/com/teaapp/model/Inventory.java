package com.teaapp.model;

public class Inventory {
    private int inventoryId;
    private int teaId;
    private String stockQuality;
    private String lastUpdated;

    public Inventory() {}

    public Inventory(int inventoryId, int teaId, String stockQuality, String lastUpdated) {
        this.inventoryId = inventoryId;
        this.teaId = teaId;
        this.stockQuality = stockQuality;
        this.lastUpdated = lastUpdated;
    }

    // Getters and Setters
    // ...

    @Override
    public String toString() {
        return "Inventory{" +
                "inventoryId=" + inventoryId +
                ", teaId=" + teaId +
                ", stockQuality='" + stockQuality + '\'' +
                ", lastUpdated='" + lastUpdated + '\'' +
                '}';
    }
}
