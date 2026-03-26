package com.user.servlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.DAO.MsgDAO;

import com.DB.DBConnect;
import com.entity.Msg;

@WebServlet("/msg")
public class MsgServlet extends HttpServlet {
			@Override
			protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				
				String name=req.getParameter("name");
				String email=req.getParameter("email");
				String msg=req.getParameter("msg");
			
				
				Msg m=new Msg ();
				m.setName(name);
				m.setEmail(email);
				m.setMsg(msg);
				
				
				
				
				
				MsgDAO dao=new MsgDAO(DBConnect.getConnection());
				boolean f=dao.add(m);
				
				
				
				
				if(true) 
				{
					HttpSession session=req.getSession();
					session.setAttribute("succmsg","Added Product...");
					resp.sendRedirect("msg.jsp");
				}
				else {
					HttpSession session=req.getSession();
					session.setAttribute("failedmsg", "Something Wrong in server....");
					resp.sendRedirect("msg.jsp");
				}
			}
}
