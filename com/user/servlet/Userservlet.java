package com.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.DB.DBConnect;
import com.entity.User;


@WebServlet("/register")
public class Userservlet extends HttpServlet {
	
       
   
    public Userservlet() {
        super();
      
    }

	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
       String email =req.getParameter("email");
        String password =req.getParameter("password");
        String phoneno =req.getParameter("phoneno");
       
 
                User u = new User();
                u.setName(name);
                u.setEmail(email);
                u.setPhoneno(phoneno);
                u.setPassword(password);
                

                UserDAO dao = new UserDAO(DBConnect.getConnection());
              
                
                boolean f2=dao.checkuser(email);
                if(f2) {
                	
                	  boolean f = dao.User(u);
                	 if (true)
                     {
                        HttpSession session=req.getSession();
                        session.setAttribute("regmsg", "Registration Successfuly.");
                        resp.sendRedirect("sign.jsp");
                     } 
                     
                     else {
                     	
                     	  HttpSession session=req.getSession();
                           session.setAttribute("failedmsg", "Something Wrong");
                           resp.sendRedirect("sign.jsp");
                     }
                	
                }else {
                	 HttpSession session=req.getSession();
                	  session.setAttribute("failedmsg", "User Already Exit Try Another Email Id");
                      resp.sendRedirect("sign.jsp");
                	
                }
                
                
                

               
            }

	}


