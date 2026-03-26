package com.entity;

public class Product {
	private int id;
private String name;
private String price;
private String category;
private String description;
private String photo;
private String status;


public Product() {
	super();
	// TODO Auto-generated constructor stub
}


public Product(int id, String name, String price, String category, String description, String photo, String status) {
	super();
	this.id = id;
	this.name = name;
	this.price = price;
	this.category = category;
	this.description = description;
	this.photo = photo;
	this.status = status;
}


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


public String getPrice() {
	return price;
}


public void setPrice(String price) {
	this.price = price;
}


public String getCategory() {
	return category;
}


public void setCategory(String category) {
	this.category = category;
}


public String getDescription() {
	return description;
}


public void setDescription(String description) {
	this.description = description;
}


public String getPhoto() {
	return photo;
}


public void setPhoto(String photo) {
	this.photo = photo;
}


public String getStatus() {
	return status;
}


public void setStatus(String status) {
	this.status = status;
}


@Override
public String toString() {
	return "Product [id=" + id + ", name=" + name + ", price=" + price + ", category=" + category + ", description="
			+ description + ", photo=" + photo + ", status=" + status + "]";
}



}