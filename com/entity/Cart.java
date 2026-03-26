package com.entity;

public class Cart {
private int cid;
private int pid;
private int id;
private String Productname;

private Double price;
private Double total_price;
public int getCid() {
	return cid;
}
public void setCid(int cid) {
	this.cid = cid;
}
public int getPid() {
	return pid;
}
public void setPid(int pid) {
	this.pid = pid;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getProductname() {
	return Productname;
}
public void setProductname(String productname) {
	Productname = productname;
}

public Double getPrice() {
	return price;
}
public void setPrice(Double price) {
	this.price = price;
}
public Double getTotal_price() {
	return total_price;
}
public void setTotal_price(Double total_price) {
	this.total_price = total_price;
}




}
