package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAO;
import com.DAO.ProductDAO;
import com.DB.DBConnect;
import com.entity.Cart;
import com.entity.Product;
@WebServlet("/cart")
public class CartServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int pid=Integer.parseInt(req.getParameter("pid"));
			int id=Integer.parseInt(req.getParameter("id"));
			
			
			
			ProductDAO dao=new ProductDAO(DBConnect.getConnection());
			Product p=dao.getProductId(pid);
		Cart c=new Cart();
		c.setPid(pid);
		c.setId(id);
		c.setProductname(p.getName());
		c.setPrice(Double.parseDouble(p.getPrice()));
		c.setTotal_price(Double.parseDouble(p.getPrice()));
		
		CartDAO dao2=new CartDAO(DBConnect.getConnection());
		boolean f=dao2.addcart(c);
		
		HttpSession session=req.getSession();
		
		if (f) {
			session.setAttribute("addcart", "Product Added To Cart");
			resp.sendRedirect("all.jsp");
			
		} else {
			session.setAttribute("failed", "Something Wrong On Server");
			resp.sendRedirect("all.jsp");
			
		}
		
		
			
			
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
	}

	
	
	
	
}
