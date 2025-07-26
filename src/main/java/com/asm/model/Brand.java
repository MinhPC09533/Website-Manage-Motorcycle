package com.asm.model;

public class Brand {
 int brand_id;
 String name;
 
 public Brand() {
	// TODO Auto-generated constructor stub
	 super();
}

public int getBrand_id() {
	return brand_id;
}

public void setBrand_id(int brand_id) {
	this.brand_id = brand_id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public Brand(int brand_id, String name) {
	super();
	this.brand_id = brand_id;
	this.name = name;
}
 
}
