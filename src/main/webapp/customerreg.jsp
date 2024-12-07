<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="mainnavbar.jsp" %>
<h3 align=center>Customer Registration Form</h3>
<div class="container">
<form method="post" action="insertcustomer">
<label>Enter Name</label>
<input type="text" class="form-control" name="cname" required/>
<br/>
<label>Select Gender</label>
<input type="radio" name="cgender" class="form-check-input" value="Male" required/>Male
<input type="radio" name="cgender" class="form-check-input" value="Female" required/>Female 
<input type="radio" name="cgender" class="form-check-input" value="Others" required/>Others
<br/>
<label>Select Date Of Birth</label>
<input type="date" name="cdob" class="form-control" required/>
<br/>
<label>Enter Email Id</label>
<input type="text" class="form-control" name="cemail" required/>
<br/>
<label>Enter Password</label>
<input type="text" class="form-control" name="cpwd" required/>
<br/>
<label>Enter Location</label>
<input type="text" class="form-control" name="clocation" required/>
<br/>
<label>Enter Contact</label>
<input type="number"class="form-control" name="ccontact" required/>
<br/>
<input type="submit"  class="btn btn-success" value="register"/>
<input type="reset"  class="btn btn-success" value="clear"/>
</form>
</div>
</body>
</html>