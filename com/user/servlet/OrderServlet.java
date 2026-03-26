package com.user.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAO;
import com.DAO.OrderDAO;
import com.DB.DBConnect;
import com.entity.Cart;
import com.entity.Order;
@WebServlet("/order")
public class OrderServlet extends HttpServlet  {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session =req.getSession();
			
			int id=Integer.parseInt(req.getParameter("id"));
			try {
			
			String name=req.getParameter("name");
			String email=req.getParameter("email");
			String phoneno=req.getParameter("phoneno");
			String address=req.getParameter("address");
			String landmark=req.getParameter("landmark");
			String city=req.getParameter("city");
			String state=req.getParameter("state");
			String pincode=req.getParameter("pincode");
			String payment=req.getParameter("payment");
			
			String fulladd=address+","+landmark+","+city+","+state+","+pincode;
		
			CartDAO dao=new CartDAO(DBConnect.getConnection());
			List<Cart> plist=dao.getProductByUser(id);
	
			
		if(plist.isEmpty())
		{
			
		resp.sendRedirect("cart.jsp");
		session.setAttribute("failedmsg","Add Item");
		
			
		}
		else {
			
			OrderDAO dao2=new OrderDAO(DBConnect.getConnection());
			
			Order o= null;


ArrayList<Order> orderlist=new ArrayList<Order>();
Random r=new Random();
for(Cart c:plist) {
	o=new Order();
	o.setOrder_id("PRODUCT-ORD-00" +r.nextInt(1000));
	o.setName(name);
	o.setEmail(email);
	o.setPhoneno(phoneno);
	o.setAddress(fulladd);
	o.setP_name(c.getProductname());
	o.setPrice(c.getPrice() +"");
	o.setPayment(payment);
	orderlist.add(o);
	
	
}


if("no".equals(payment))
{
session.setAttribute("failedmsg","Choose Payment Method");
resp.sendRedirect("cart.jsp");	

}
else {

boolean f=dao2.saveorder(orderlist);
if(f) {
	resp.sendRedirect("payment.jsp");
} else {
	session.setAttribute("failedmsg","Your Order Failed");
	resp.sendRedirect("cart.jsp");
}


}


		}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}

