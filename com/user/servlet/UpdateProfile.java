package com.user.servlet;

import java.io.IOException;
import java.sql.PreparedStatement;
import com.DB.DBConnect;
import com.entity.User;

import javax.servlet.ServletException;
import com.DAO.UserDAO;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/update")
public class UpdateProfile  extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			String name = req.getParameter("name");
		       String email =req.getParameter("email");
		        String password =req.getParameter("password");
		        String phoneno =req.getParameter("phoneno");
		        
		        
		        
		        User u=new User();
		        u.setId(id);
		        u.setName(name);
		        u.setEmail(email);
		        u.setPhoneno(phoneno);
		        
		       
		    UserDAO dao=new UserDAO(DBConnect.getConnection());
		    
		    boolean f=dao.check(id, password);
		    if(f) {
		    	
		    			boolean f2=dao.update(u);
		    				if(f2) {
		    					
		    		

		    						HttpSession session=req.getSession();
		    						session.setAttribute("regmsg", "User Profile Update Successfuly.");
		    						resp.sendRedirect("edit.jsp");
		    		
		    						}else {

		    						HttpSession session=req.getSession();
		    						session.setAttribute("failedmsg", "Something Wrong on Server");
		    						resp.sendRedirect("edit.jsp");
		    						}

		    
		    }else {
		    	

                HttpSession session=req.getSession();
                session.setAttribute("failedmsg", "Your Password is Incorrect");
                resp.sendRedirect("edit.jsp");
		    	
		    }
		    

		       
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	


}
