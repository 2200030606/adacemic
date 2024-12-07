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
    <h3 align="center">DELETE CUSTOMERS</h3>
    <table align="center" border="2" clas="table table-srriped">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>EMAIL</th>
            <th>LOCATION</th>
            <th>CONTACT NO</th>
            <th>ACTION</th>
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
                
                <td>
                <a href='<c:url value='delete?id=${customer.id}'></c:url>'>	Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
