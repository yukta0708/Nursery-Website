package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ProductDAO;
import com.DB.DBConnect;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			ProductDAO dao=new ProductDAO(DBConnect.getConnection());
			boolean f=dao.delete(id);
			HttpSession session=req.getSession();
			if(f) {
				
			session.setAttribute("succmsg", "Product delete Successfully..");
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
