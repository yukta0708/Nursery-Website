package com.user.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.DAO.UserDAO;
import com.DB.DBConnect;
import com.entity.User;
@WebServlet("/login")
public class Loginservlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		HttpSession session=req.getSession();
		UserDAO dao=new UserDAO(DBConnect.getConnection());
		
		
		if("admin@gmail.com" .equals(email) && "admin" .equals(password)) {
			User u = new User();
				u.setName("Admin");
			session.setAttribute("userobj",u);
			
			resp.sendRedirect("admin/admin.jsp");
		} else {
			
			
		 User u=dao.getLogin(email,password);
		 if(u!=null) {
			
			 session.setAttribute("userobj",u);
			 resp.sendRedirect("index.jsp");
		 }
		}
		 
	}
 
}

