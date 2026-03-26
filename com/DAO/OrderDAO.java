package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Order;

public class OrderDAO {
	private Connection conn;
				
	public OrderDAO(Connection conn) {
		super();
		this.conn = conn;
	}
			
			public boolean saveorder(List<Order> plist) {
			    boolean success = false;
			    try {
			        String sql = "INSERT INTO `order` (order_id, name, email, address, phoneno, p_name, price, payment) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

			        conn.setAutoCommit(false);
			        PreparedStatement ps = conn.prepareStatement(sql);

			        for (Order o : plist) {
			            ps.setString(1, o.getOrder_id());
			            ps.setString(2, o.getName());
			            ps.setString(3, o.getEmail());
			            ps.setString(4, o.getAddress());
			            ps.setString(5, o.getPhoneno());
			            ps.setString(6, o.getP_name());
			            ps.setString(7, o.getPrice());
			            ps.setString(8, o.getPayment());
			            ps.addBatch();
			        }

			        int[] count=ps.executeBatch();
			        conn.commit();
			      
			        success = true;
			        conn.setAutoCommit(true);
			    } catch (Exception e) {
			        e.printStackTrace();
			    
			  
			}
			    return success;
			}
			public List<Order> getProduct(String email) {
			    List<Order> list = new ArrayList<Order>();
			    Order o = null;
			    try {
			        String sql = "select * from `order` where email=?";
			        PreparedStatement ps = conn.prepareStatement(sql);
			        ps.setString(1, email); // Fix: Set the email parameter
			        ResultSet rs = ps.executeQuery();
			        while (rs.next()) { // Fix: Removed semicolon
			            o = new Order();
			            o.setId(rs.getInt(1));
			            o.setOrder_id(rs.getString(2));
			            o.setName(rs.getString(3));
			            o.setEmail(rs.getString(4));
			            o.setAddress(rs.getString(5));
			            o.setPhoneno(rs.getString(6));
			            o.setP_name(rs.getString(7));
			            o.setPrice(rs.getString(8));
			            o.setPayment(rs.getString(9));
			            list.add(o); // Fix: Add Order object to the list
			        }
			    } catch (Exception e) {
			        e.printStackTrace();
			    }
			    return list;
			}

			
			public List<Order> getorder() {
			    List<Order> list = new ArrayList<Order>();
			    Order o = null;
			    try {
			        String sql = "select * from `order`"; // Assuming `order` is your table name
			        PreparedStatement ps = conn.prepareStatement(sql);
			        ResultSet rs = ps.executeQuery();
			        while (rs.next()) {
			            o = new Order();
			            o.setId(rs.getInt(1));
			            o.setOrder_id(rs.getString(2));
			            o.setName(rs.getString(3));
			            o.setEmail(rs.getString(4));
			            o.setAddress(rs.getString(5));
			            o.setPhoneno(rs.getString(6));
			            o.setP_name(rs.getString(7));
			            o.setPrice(rs.getString(8));
			            o.setPayment(rs.getString(9));
			            list.add(o);
			        }
			    } catch (Exception e) {
			        e.printStackTrace();
			    }
			    return list;
			}

			
			
			public boolean cancel(int id) {
			    boolean f = false;

			    try {
			        String sql = "DELETE FROM `order` WHERE id=?";
			        PreparedStatement ps = conn.prepareStatement(sql);
			        ps.setInt(1, id);
			        int i = ps.executeUpdate();
			        if (i == 1) {
			            f = true;
			        }
			    } catch (Exception e) {
			        e.printStackTrace();
			    }
			    return f;
			}

				
			
			
			
			
			
			
			
			
			
			
			
}