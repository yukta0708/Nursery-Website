package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Cart;
import com.entity.Product;

public class CartDAO {
	
	 private Connection conn;

		
		public CartDAO(Connection conn) {
			super();
			this.conn = conn;
		}

		public boolean addcart(Cart c)
		{
				boolean f=false;
			try {
				String sql="insert into cart(pid,id,Productname,price,total_price) values(?,?,?,?,?)";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setInt(1, c.getPid());
				ps.setInt(2, c.getId());
				ps.setString(3, c.getProductname());
				ps.setDouble(4, c.getPrice());
				ps.setDouble(5, c.getTotal_price());
				
				int i=ps.executeUpdate();
				if(i==1) {
					f=true;
				}
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
				

				
				return f;
}
	
		public List<Cart> getProductByUser(int id) {
		    List<Cart> list = new ArrayList<Cart>();
		    Cart c = null;
		    double totalprice = 0; // Store total price separately

		    try {
		        String sql = "SELECT * FROM cart WHERE id=?"; // Ensure 'id' is actually the user ID column
		        PreparedStatement ps = conn.prepareStatement(sql);
		        ps.setInt(1, id);
		        ResultSet rs = ps.executeQuery();

		        while (rs.next()) {
		            c = new Cart();
		           
		            c.setPid(rs.getInt("pid")); // Product ID
		            c.setId(rs.getInt("id"));   // User ID (Make sure this column is correct)
		            c.setProductname(rs.getString("productname"));
		            c.setPrice(rs.getDouble("price"));
		            c.setTotal_price(rs.getDouble("total_price")); // Correct total price handling

		            totalprice += rs.getDouble("total_price"); // Store total price separately
		            list.add(c);
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    }

		    return list;
		}

		
	public boolean delete(int pid)	 {
		boolean f=false;
		
		try {
		String sql= "delete from cart where pid=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, pid);
		
		int i=ps.executeUpdate();
		 if (i==1) {
			 f=true;
		 }
		
		
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		return f;
	}
		
		
		
		
		
		
}
