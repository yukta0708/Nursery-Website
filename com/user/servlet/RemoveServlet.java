package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAO;
import com.DB.DBConnect;
@WebServlet("/remove")
public class RemoveServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int pid=Integer.parseInt(req.getParameter("pid"));
		
		CartDAO dao=new CartDAO(DBConnect.getConnection());
		boolean f=dao.delete(pid);
	
		HttpSession session=req.getSession();
		if (f) {
			session.setAttribute("succMsg", "Product Removed From Cart");
			resp.sendRedirect("index.jsp");
		}
		else {
			session.setAttribute("failedmsg", "Something Wrong In Server");
			resp.sendRedirect("index.jsp");
		}
		
		
		
		
		
		
	}

	
	
	
}
