<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Products</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/style.css' />">
</head>
<body>
    <h2>All Products</h2>

    <table border="1">
        <thead>
            <tr>
                <th>Product Name</th>
                <th>Cost</th>
                <th>Description</th>
                <th>Image</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="product" items="${products}">
                <tr>
                    <td>${product.name}</td>
                    <td>${product.cost}</td>
                    <td>${product.description}</td>
                    <td>
                        <img src="<c:url value='/displayproductimage?id=${product.id}' />" alt="Product Image" width="100" height="100"/>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
