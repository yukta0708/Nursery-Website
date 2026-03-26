package com.DAO;
import java.sql.Connection;
import com.entity.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class UserDAO {
	private Connection conn;
	public UserDAO(Connection conn) {
        this.conn = conn;
    }

    public boolean User(User u) {
        boolean f = false;
        String sql = "INSERT INTO user(id,name,email,password,phoneno) VALUES (?, ?, ?, ?, ?)";
        
        try (PreparedStatement ps = conn.prepareStatement(sql)) {
        	 ps.setInt(1, u.getId());
            ps.setString(2, u.getName());
            ps.setString(3, u.getEmail());
            ps.setString(4, u.getPassword());
            ps.setString(5, u.getPhoneno());
          
           
            ps.executeUpdate();
            f=true;
            
        } catch (Exception e) {
            // Log or handle the exception appropriately
            e.printStackTrace();
        }
        
        return f;
    }
    public  User getLogin(String email,String password)
    {
    	User us=null;
    	try {
    		
    		String sql="select* from user where email=? and password=?";
    		PreparedStatement pst=conn.prepareStatement(sql);
    		pst.setString(1, email);
    		pst.setString(2, password);
    		
    		ResultSet rs=pst.executeQuery();
    		if(rs.next())
    		{
    			us=new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
    			
    		}
    		
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    	return us;
    }
   
	public boolean check(int id, String ps) {
		boolean f=false;
		
		try {
			String sql="select * from user where id=? and password=?";
			
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, id);
			
			pst.setString(2, ps);
			
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				
				f=true;
				
				
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	public boolean update(User u) {
		boolean f=false;
		
		
		try {
			  String sql = "update user set name=?, email=?, phoneno=? where id=?";
		        PreparedStatement ps = conn.prepareStatement(sql);
		        ps.setString(1, u.getName());
		        ps.setString(2, u.getEmail());
		        ps.setString(3, u.getPhoneno());
		        	ps.setInt(4, u.getId());
		          
		           
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
		
	}
 public boolean checkuser(String em) {
	 
	 boolean f=true;
	 
	 try {
		 
		 
		 
		  String sql = "select * from user where email=?";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setString(1, em);
	       
	        ResultSet rs=ps.executeQuery();
	        while (rs.next())
	        {
	        f=false;	
	        	
	        	
	        }
	          
	           
		
	
		 
		 
		 
	 } catch(Exception e) {
		 e.printStackTrace();
	 }
	 
	 return f;
 }
	
}



