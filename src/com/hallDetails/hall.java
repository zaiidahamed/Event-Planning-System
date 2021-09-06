package com.hallDetails;

public class hall {
	private String hallID;
	private String name;
	private String description;
	private double price;
	
	
	public hall() {
		
	}

	public hall(String hallID, String name, String description, double price) {
		this.hallID = hallID;
		this.name = name;
		this.description = description;
		this.price = price;
	}


	public String getHallID() {
		return hallID;
	}


	public void setHallID(String hallID) {
		this.hallID = hallID;
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
	
}
