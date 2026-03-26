package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Product;

public class ProductDAO {
	 private Connection conn;

		
		public ProductDAO(Connection conn) {
			super();
			this.conn = conn;
		}

		public boolean addproduct(Product p)
		{
			boolean f=false;
			try {
				String sql="insert into product(id, name, price, category, description, photo, status) values(?,?,?,?,?,?,?) ";
						PreparedStatement ps=conn.prepareStatement(sql);
						ps.setInt(1, p.getId());
						ps.setString(2, p.getName());
						ps.setString(3, p.getPrice());
						ps.setString(4, p.getCategory());
						ps.setString(5, p.getDescription());
						ps.setString(6, p.getPhoto());
						ps.setString(7, p.getStatus());
						
						
						
						 ps.executeUpdate();
				            f=true;
				            
						
							
						
			} catch (Exception e) {
				e.printStackTrace();
			}
			return f;
		}
		
		
		public List<Product> getallproduct() 
		{
	
			List<Product> list=new ArrayList<Product>();	
				Product p=null;
				
				try {
				String sql="select * from product";
				PreparedStatement ps=conn.prepareStatement(sql);
				ResultSet rs=ps.executeQuery();
				while(rs.next())
				{
					p=new Product();
					p.setId(rs.getInt(1));
					p.setName(rs.getString(2));
					p.setPrice(rs.getString(3));
					p.setCategory(rs.getString(4));
					p.setDescription(rs.getString(5));
					p.setPhoto(rs.getString(6));
					p.setStatus(rs.getString(7));
					
					;
					list.add(p);
				}			
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
				return list;		
					
    }
		
		public Product getProductId(int id) {
			
			Product p=null;
			
			try {
				String sql="select * from product where id=?" ;
				PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setInt(1,id);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				p=new Product();
				p.setId(rs.getInt(1));
				p.setName(rs.getString(2));
				p.setPrice(rs.getString(3));
				p.setCategory(rs.getString(4));
				p.setDescription(rs.getString(5));
				p.setPhoto(rs.getString(6));
				p.setStatus(rs.getString(7));
				
			}
			
			
			
			} catch(Exception e) {
				e.printStackTrace();
			}
			return p;
		}
		
		
	public boolean update(Product p) {
		
		boolean f=false;
		try {
			String sql="update product set name=? ,price=? ,status=? where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);

			ps.setString(1, p.getName());
			ps.setString(2, p.getPrice());
			ps.setString(3, p.getStatus());
			ps.setInt(4, p.getId());
			
			int i=ps.executeUpdate();
			if(i==1) 
			{
				f=true;
			} 
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		return f;
		
	}
	
	public boolean delete(int id) 
	{
		 boolean f=false;
		 
		 try {
			 String sql="delete from product where id=?";
			 PreparedStatement ps=conn.prepareStatement(sql);
			 ps.setInt(1, id);
			 int i=ps.executeUpdate();
			 if (i==1) {
				 f=true;
			 }

			 
		 }catch (Exception e) {
			 e.printStackTrace();
		 }
		 return f;
	}
	
	

	
	
	public List<Product> getAllProducts() {
	    List<Product> productList = new ArrayList<>();
	    try {
	        String sql = "SELECT * FROM product WHERE status=? order by id DESC";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setString(1, "Active");
	        ResultSet rs = ps.executeQuery();
	        int i=1;
	        while (rs.next() && i<=4 ) {
	            Product product = new Product();
	            product.setId(rs.getInt(1));
	            product.setName(rs.getString(2));
	            product.setPrice(rs.getString(3));
	            product.setCategory(rs.getString(4));
	            product.setDescription(rs.getString(5));
	            product.setPhoto(rs.getString(6));
	            product.setStatus(rs.getString(7));
	            productList.add(product);
	            i++;
	            
	        }
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	       
	    }
	    
	    return productList;
	}

	public List<Product> getAllplant() {
	    List<Product> productList = new ArrayList<>();
	    try {
	        String sql = "SELECT * FROM product WHERE category=?";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setString(1, "plant");
	        ResultSet rs = ps.executeQuery();
	      
	        while (rs.next() ) {
	            Product product = new Product();
	            product.setId(rs.getInt(1));
	            product.setName(rs.getString(2));
	            product.setPrice(rs.getString(3));
	            product.setCategory(rs.getString(4));
	            product.setDescription(rs.getString(5));
	            product.setPhoto(rs.getString(6));
	            product.setStatus(rs.getString(7));
	            productList.add(product);
	          
	            
	        }
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	       
	    }
	    
	    return productList;
	}
	public List<Product> getAllflower() {
	    List<Product> productList = new ArrayList<>();
	    try {
	        String sql = "SELECT * FROM product WHERE category=?";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setString(1, "flower");
	        ResultSet rs = ps.executeQuery();
	       
	        while (rs.next()  ) {
	            Product product = new Product();
	            product.setId(rs.getInt(1));
	            product.setName(rs.getString(2));
	            product.setPrice(rs.getString(3));
	            product.setCategory(rs.getString(4));
	            product.setDescription(rs.getString(5));
	            product.setPhoto(rs.getString(6));
	            product.setStatus(rs.getString(7));
	            productList.add(product);
	           
	            
	        }
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	       
	    }
	    
	    return productList;
	}
	
	
	public List<Product> getAll() {
	    List<Product> productList = new ArrayList<>();
	    try {
	        String sql = "SELECT * FROM product";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        
	        ResultSet rs = ps.executeQuery();
	      
	        while (rs.next() ) {
	            Product product = new Product();
	            product.setId(rs.getInt(1));
	            product.setName(rs.getString(2));
	            product.setPrice(rs.getString(3));
	            product.setCategory(rs.getString(4));
	            product.setDescription(rs.getString(5));
	            product.setPhoto(rs.getString(6));
	            product.setStatus(rs.getString(7));
	            productList.add(product);
	         
	        }
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	       
	    }
	    
	    return productList;
	}
	
	
	public List<Product> getAllpots() {
	    List<Product> productList = new ArrayList<>();
	    try {
	        String sql = "SELECT * FROM product WHERE category=?";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setString(1, "pots");
	        ResultSet rs = ps.executeQuery();
	       
	        while (rs.next() ) {
	            Product product = new Product();
	            product.setId(rs.getInt(1));
	            product.setName(rs.getString(2));
	            product.setPrice(rs.getString(3));
	            product.setCategory(rs.getString(4));
	            product.setDescription(rs.getString(5));
	            product.setPhoto(rs.getString(6));
	            product.setStatus(rs.getString(7));
	            productList.add(product);
	           
	            
	        }
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	       
	    }
	    
	    return productList;
	}
	public List<Product> getAllseed() {
	    List<Product> productList = new ArrayList<>();
	    try {
	        String sql = "SELECT * FROM product WHERE category=?";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setString(1, "seeds");
	        ResultSet rs = ps.executeQuery();
	       
	        while (rs.next() ) {
	            Product product = new Product();
	            product.setId(rs.getInt(1));
	            product.setName(rs.getString(2));
	            product.setPrice(rs.getString(3));
	            product.setCategory(rs.getString(4));
	            product.setDescription(rs.getString(5));
	            product.setPhoto(rs.getString(6));
	            product.setStatus(rs.getString(7));
	            productList.add(product);
	          
	            
	        }
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	       
	    }
	    
	    return productList;
	}
	public List<Product> getAllacc() {
	    List<Product> productList = new ArrayList<>();
	    try {
	        String sql = "SELECT * FROM product WHERE category=?";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setString(1, "accessories");
	        ResultSet rs = ps.executeQuery();
	       
	        while (rs.next() ) {
	            Product product = new Product();
	            product.setId(rs.getInt(1));
	            product.setName(rs.getString(2));
	            product.setPrice(rs.getString(3));
	            product.setCategory(rs.getString(4));
	            product.setDescription(rs.getString(5));
	            product.setPhoto(rs.getString(6));
	            product.setStatus(rs.getString(7));
	            productList.add(product);
	         
	            
	        }
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	       
	    }
	    
	    return productList;
	}
	public List<Product> getbysearch(String ch)
	{
		    List<Product> productList = new ArrayList<>();
		    Product p=null;
		    try {
		        String sql = "SELECT * FROM product WHERE name like ? or category like ? and status=?";
		        PreparedStatement ps = conn.prepareStatement(sql);
		        ps.setString(1, "%" +ch+"%");
		        ps.setString(2, "%" +ch+"%");
		        ps.setString(3, "Active");
		        ResultSet rs = ps.executeQuery();
		      
		        while (rs.next() ) {
		            Product product = new Product();
		            product.setId(rs.getInt(1));
		            product.setName(rs.getString(2));
		            product.setPrice(rs.getString(3));
		            product.setCategory(rs.getString(4));
		            product.setDescription(rs.getString(5));
		            product.setPhoto(rs.getString(6));
		            product.setStatus(rs.getString(7));
		            productList.add(product);
		          
		            
		        }
		        
		    } catch (Exception e) {
		        e.printStackTrace();
		       
		    }
		    
		    return productList;
		}
	
	

		
		
	}
