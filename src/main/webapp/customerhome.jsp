<%@ page import="com.klef.jfsd.springboot.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Retrieve the Customer object from the session
    Customer c = (Customer) session.getAttribute("customer");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            padding: 20px;
            text-align: center;
        }
        .welcome {
            margin-top: 50px;
            font-size: 24px;
            font-weight: bold;
        }
    </style>
</head>
<body>
<%@ include file="customernavbar.jsp" %>
    <div class="welcome">
        <% if (c != null) { %>
            Welcome, <%= c.getName() %>! <!-- Adjust this to match the actual getter method -->
        <% } else { %>
            Welcome, Guest! Please log in to access more features.
        <% } %>
    </div>
</body>
</html>
