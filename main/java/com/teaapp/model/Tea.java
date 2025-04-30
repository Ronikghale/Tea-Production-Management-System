package com.teaapp.model;

public class Tea {
    private int teaId;
    private String name;
    private String type;
    private double pricePerKg;
    private String harvestingLocation;
    private String harvestedDate;
    private String supplier;
    private String exportStatus;
    private String quality;

    // Constructors
    public Tea() {}

    public Tea(int teaId, String name, String type, double pricePerKg, String harvestingLocation,
               String harvestedDate, String supplier, String exportStatus, String quality) {
        this.teaId = teaId;
        this.name = name;
        this.type = type;
        this.pricePerKg = pricePerKg;
        this.harvestingLocation = harvestingLocation;
        this.harvestedDate = harvestedDate;
        this.supplier = supplier;
        this.exportStatus = exportStatus;
        this.quality = quality;
    }

    // Getters and Setters
    // ... [include all getters and setters here]

    @Override
    public String toString() {
        return "Tea{" +
                "teaId=" + teaId +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", pricePerKg=" + pricePerKg +
                ", harvestingLocation='" + harvestingLocation + '\'' +
                ", harvestedDate='" + harvestedDate + '\'' +
                ", supplier='" + supplier + '\'' +
                ", exportStatus='" + exportStatus + '\'' +
                ", quality='" + quality + '\'' +
                '}';
    }
}
