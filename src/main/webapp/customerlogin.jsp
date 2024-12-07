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
<h3 align=center>Customer Login Form</h3>
<div class="container">
<form method="post" action="checkcustomerlogin">
<label>Enter Email</label>
<input type="text" class="form-control" name="cemail" required/>
<br/>
<label>Enter Password</label>
<input type="text" class="form-control" name="cpwd" required/>
<br/>
<input type="submit"  class="btn btn-success" value="register"/>
<input type="reset"  class="btn btn-success" value="clear"/>
</form>
</div>
</body>
</html>