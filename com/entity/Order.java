package com.entity;

public class Order {
private int id;
private String order_id;
private String name;
private String email;
private String p_name;
private String phoneno;
private String address;
private String price;
private String payment;
public Order() {
	super();
	// TODO Auto-generated constructor stub
}

public String getPrice() {
	return price;
}

public void setPrice(String price) {
	this.price = price;
}

public String getP_name() {
	return p_name;
}

public void setP_name(String p_name) {
	this.p_name = p_name;
}

public String getOrder_id() {
	return order_id;
}

public void setOrder_id(String order_id) {
	this.order_id = order_id;
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
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhoneno() {
	return phoneno;
}
public void setPhoneno(String phoneno) {
	this.phoneno = phoneno;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getPayment() {
	return payment;
}
public void setPayment(String payment) {
	this.payment = payment;
}
@Override
public String toString() {
	return "Order [id=" + id + ", name=" + name + ", email=" + email + ", phoneno=" + phoneno + ", address=" + address
			+ ", payment=" + payment + "]";
}


}
