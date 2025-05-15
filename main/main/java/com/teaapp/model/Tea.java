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

	public int getTeaId() {
		return teaId;
	}

	public void setTeaId(int teaId) {
		this.teaId = teaId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public double getPricePerKg() {
		return pricePerKg;
	}

	public void setPricePerKg(double pricePerKg) {
		this.pricePerKg = pricePerKg;
	}

	public String getHarvestingLocation() {
		return harvestingLocation;
	}

	public void setHarvestingLocation(String harvestingLocation) {
		this.harvestingLocation = harvestingLocation;
	}

	public String getHarvestedDate() {
		return harvestedDate;
	}

	public void setHarvestedDate(String harvestedDate) {
		this.harvestedDate = harvestedDate;
	}

	public String getSupplier() {
		return supplier;
	}

	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}

	public String getExportStatus() {
		return exportStatus;
	}

	public void setExportStatus(String exportStatus) {
		this.exportStatus = exportStatus;
	}

	public String getQuality() {
		return quality;
	}

	public void setQuality(String quality) {
		this.quality = quality;
	}
}
