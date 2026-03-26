<%@page import="com.DB.DBConnect" %>
<%@page import="com.DAO.ProductDAO" %>
<%@page import="com.entity.Product" %>
<%@page import="com.entity.User" %>
<%@page import="java.util.List" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Category </title>
    <link rel = "stylesheet" href = "product.css">
</head>
<body>
    <div class = "wrapper">
        <div class = "category-filter">
            <div class = "container">
                <div class = "title">
                    <h1>More Product</h1>
                </div>

                <div class = "filter-btns">
                    <a type = "button"  href="all.jsp" class = "filter-btn" id = "all">all</a>
                    <a type = "button" href="plant.jsp" class = "filter-btn" id = "new">PLant</a>
                    <a type = "button" href="pots.jsp" class = "filter-btn" id = "best-sellers">Pots</a>
                    <a type = "button" href="seed.jsp" class = "filter-btn" id = "best-sellers">Seeds</a>
                    <a type = "button"  href="acc.jsp" class = "filter-btn" id = "acc">accessories</a>
                     <a type = "button" href="flower.jsp" class ="filter-btn" id = "specials">Flower</a>
                </div>

               
                </div>
            </div>
        </div>
    </div>

    <script src = "product.js"></script>
</body>
</html>