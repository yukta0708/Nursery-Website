<%@page import="com.DB.DBConnect" %>
<%@page import="com.DAO.MsgDAO" %>
<%@page import="com.entity.User" %>
<%@page import="com.entity.Msg" %>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="header.css">
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<meta charset="UTF-8">
<title>All books</title>
</head>

<body>
<header> 
<c:if test="${empty userobj}">
<c:redirect url="../form.jsp" />
</c:if>
	</header> 
	<br>
	<br>
	<br>
	<br>
<h3 class="text-center">Customer FeedBack Details</h3>
	<c:if test="${not empty failedmsg }">
				<h5 class="text-center text-danger">${failedmsg}</h5>
				<c:remove var="failedmsg" scope="session" />
				</c:if>
				
				
				
				<c:if test="${not empty regmsg }">
				<h5 class="text-center text-success">${regmsg}</h5>
				<c:remove var="regmsg" scope="session" />
				</c:if>
<table class="table table-striped ">
  <thead class="bg-primary text-white">
    <tr>
    <th scope="col">Id</th>
      <th scope="col">name</th>
      <th scope="col">email</th>
      <th scope="col">Message</th>
       <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <%
 User u=(User)session.getAttribute("userobj");
 %>
  <%
  
  MsgDAO dao=new MsgDAO(DBConnect.getConnection());
  List<Msg> list=dao.getall();
  for(Msg m:list) {
%>
  <tr>
      <th ><%=m.getId()%></th>
      <td><%=m.getName()%></td>
      <td><%=m.getEmail()%></td>
       <td><%=m.getMsg()%></td>
       
      <td>
     
      <a href="../del?id=<%=m.getId() %>" class="btn btn-sm btn-danger"><i class="fa-sharp fa-solid fa-delete-left"></i> Delete</a>
      </td>
     
    </tr>
	<%  
  }
  %> 
    
  </tbody>
</table>
</body>
</html>