package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Msg;
import com.entity.Product;

public class MsgDAO {
	 private Connection conn;

		
		public MsgDAO(Connection conn) {
			super();
			this.conn = conn;
		}
		public boolean add(Msg m)
		{
			boolean f=false;
			try {
				String sql="insert into msg(id, name, email, msg) values(?,?,?,?) ";
						PreparedStatement ps=conn.prepareStatement(sql);
						ps.setInt(1, m.getId());
						ps.setString(2, m.getName());
						ps.setString(3, m.getEmail());
						ps.setString(4, m.getMsg());
						
						
						
						 ps.executeUpdate();
				            f=true;
				            
						
							
						
			} catch (Exception e) {
				e.printStackTrace();
			}
			return f;
		}
		
		
	public List<Msg> getall() 
		{
	
			List<Msg> list=new ArrayList<Msg>();	
				Msg m=null;
				
				try {
				String sql="select * from msg";
				PreparedStatement ps=conn.prepareStatement(sql);
				ResultSet rs=ps.executeQuery();
				while(rs.next())
				{
					 m =new Msg();
					m.setId(rs.getInt(1));
					m.setName(rs.getString(2));
					m.setEmail(rs.getString(3));
					m.setMsg(rs.getString(4));
				
					
					;
					list.add(m);
				}			
				
			}catch (Exception e) {
				e.printStackTrace();
			}
			
				return list;	
		}
	
	public Msg get(int id) {
		
		Msg m=null;
		
		try {
			String sql="select * from Msg where id=?" ;
			PreparedStatement ps=conn.prepareStatement(sql);
		
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			m =new Msg();
			m.setId(rs.getInt(1));
			m.setName(rs.getString(2));
			m.setEmail(rs.getString(3));
			m.setMsg(rs.getString(4));
		
		
			
		}
		
		
		
		} catch(Exception e) {
			e.printStackTrace();
		}
		return m;
	}
	
	
	public boolean delete(int id) 
	{
		 boolean f=false;
		 
		 try {
			 String sql="delete from msg where id=?";
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
	
	

	

}
	 
		 
	