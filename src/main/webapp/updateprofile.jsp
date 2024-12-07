<%@ page import="com.klef.jfsd.springboot.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    // Retrieve the Customer object from the session
    Customer c = (Customer) session.getAttribute("customer");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Profile</title>
</head>
<body>
<%@ include file="customernavbar.jsp" %>
<h3 align=center>Customer Update Profile Form</h3>
<div class="container">
<form method="post" action="update">
<label>ID</label>
<input type="number" class="form-control" name="cid" value="<%=c.getId()%>" readonly required/>
<br/>
<label>Enter Name</label>
<input type="text" class="form-control" name="cname" value="<%=c.getName() %>" required/>
<br/>
<label>Select Gender</label>
<input type="radio" name="cgender" class="form-check-input" value="Male" required/>Male
<input type="radio" name="cgender" class="form-check-input" value="Female" required/>Female 
<input type="radio" name="cgender" class="form-check-input" value="Others" required/>Others
<br/>
<label>Select Date Of Birth</label>
<input type="date" name="cdob" class="form-control" value="<%=c.getDateofbirth() %>" required/>
<br/>
<label>Enter Email Id</label>
<input type="text" class="form-control" name="cemail" value="<%=c.getEmail() %>" readonly required/>
<br/>
<label>Enter Password</label>
<input type="text" class="form-control" name="cpwd" value="<%=c.getPassword() %>" required/>
<br/>
<label>Enter Location</label>
<input type="text" class="form-control" name="clocation" value="<%=c.getLocation() %>" required/>
<br/>
<label>Enter Contact</label>
<input type="number"class="form-control" name="ccontact" value="<%=c.getContact()%>"required/>
<br/>
<input type="submit"  class="btn btn-success" value="update"/>
<input type="reset"  class="btn btn-success" value="clear"/>
</form>
</div>
</body>
</html>