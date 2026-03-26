package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.OrderDAO;
import com.DB.DBConnect;
@WebServlet("/cancel")
public class CancelOrderServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			OrderDAO dao=new OrderDAO(DBConnect.getConnection());
			boolean f=dao.cancel(id);
			HttpSession session=req.getSession();
			if(f) {
				
			session.setAttribute("succmsg", "Product delete Successfully..");
			resp.sendRedirect("our.jsp");
				
			}else {
				session.setAttribute("failedmsg", "Something Wrong on Server..");
				resp.sendRedirect("our.jsp");
			}
			
			
			
			
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	
}
