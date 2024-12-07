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
    <title>Customer Profile</title>
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
<h3 align="center">My Profile</h3>
ID: <%= c.getId() %><br/>
Name: <%= c.getName() %><br/>
Gender: <%= c.getGender() %><br/>
Dob : <%= c.getDateofbirth() %><br/>
Email: <%= c.getEmail() %><br/>
Location: <%= c.getLocation() %><br/>
Contact No: <%= c.getContact() %><br/>
</body>
</html>
