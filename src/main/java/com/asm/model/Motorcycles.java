package com.asm.model;

public class Motorcycles {
	int motorcycle_id;
	String name;
	int price;
	int stock_quantity;
	String description;
	String image_url;
	public int getMotorcycle_id() {
		return motorcycle_id;
	}
	public void setMotorcycle_id(int motorcycle_id) {
		this.motorcycle_id = motorcycle_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getStock_quantity() {
		return stock_quantity;
	}
	public void setStock_quantity(int stock_quantity) {
		this.stock_quantity = stock_quantity;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage_url() {
		return image_url;
	}
	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}
	public Motorcycles() {
		// TODO Auto-generated constructor stub
		super();
	}
	public Motorcycles(int motorcycle_id, String name, int price, int stock_quantity, String description,
			String image_url) {
		super();
		this.motorcycle_id = motorcycle_id;
		this.name = name;
		this.price = price;
		this.stock_quantity = stock_quantity;
		this.description = description;
		this.image_url = image_url;
	}
	
}
