package com.user.servlet;

import com.DAO.ProductDAO;
import com.DB.DBConnect;
import com.entity.Product;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
@MultipartConfig
@WebServlet("/add_product")

public class ProductAdd extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name=req.getParameter("name");
		String price=req.getParameter("price");
		String category=req.getParameter("category");
		String description=req.getParameter("description");
		Part part=req.getPart("image");
		String fileName=part.getSubmittedFileName();
		String status=req.getParameter("status");
		
		Product p=new Product();
		p.setName(name);
		p.setPrice(price);
		p.setCategory(category);
		p.setDescription(description);
		p.setPhoto(fileName);
		p.setStatus(status);
	
		
		
		
		ProductDAO dao=new ProductDAO(DBConnect.getConnection());
		boolean f=dao.addproduct(p);  
		
		
		
		String path=getServletContext().getRealPath("")+"product";
		File file =new File(path);
		part.write(path + File.separator + fileName);
		
		
		if(true) 
		{
			HttpSession session=req.getSession();
			session.setAttribute("succmsg","Added Product...");
			resp.sendRedirect("admin/all.jsp");
		}
		else {
			HttpSession session=req.getSession();
			session.setAttribute("failedmsg", "Something Wrong in server....");
			resp.sendRedirect("admin/all.jsp");
		}
	}
}



