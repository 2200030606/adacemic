<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
</head>
 
<body>
    <%@ include file="adminnavbar.jsp" %><br/><br/>
    Total Customers : <c:out value="${count}"/>
    <h3 align="center">VIEW ALL CUSTOMERS</h3>
    <table align="center" border="2">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>EMAIL</th>
            <th>LOCATION</th>
            <th>CONTACT NO</th>
        </tr>
 
        <c:forEach items="${customerlist}" var="customer">
            <tr>
                <td><c:out value="${customer.id}"/></td>
                <td><c:out value="${customer.name}"/></td>
                <td><c:out value="${customer.gender}"/></td>
                <td><c:out value="${customer.dateofbirth}"/></td>
                <td><c:out value="${customer.email}"/></td>
                <td><c:out value="${customer.location}"/></td>
                <td><c:out value="${customer.contact}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
