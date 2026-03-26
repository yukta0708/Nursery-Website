package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.ProductDAO;
import com.DB.DBConnect;
import com.entity.Product;

@WebServlet("/edit")

public class EditServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		String price=req.getParameter("price");
		String status=req.getParameter("status");
		
		Product p=new Product();
		p.setId(id);
		p.setName(name);
		p.setPrice(price);
		p.setStatus(status);
		
		
		ProductDAO dao=new ProductDAO(DBConnect.getConnection());
		boolean f=dao.update(p);
		
		HttpSession session=req.getSession();
		if(f) {
			
		session.setAttribute("succmsg", "Product Update Successfully..");
		resp.sendRedirect("admin/add.jsp");
			
		}else {
			session.setAttribute("failedmsg", "Something Wrong on Server..");
			resp.sendRedirect("admin/add.jsp");
		}
		
		
		
		
	}catch (Exception e) {
		e.printStackTrace();
	}
	
	}
}
