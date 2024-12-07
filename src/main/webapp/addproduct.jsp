<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
</head>
<body>
<h3 align=center>Add Product</h3>
<form method="post" action="insertproduct" enctype="multipart/form-data">
<label>Product Name</label>
<input type="text" class="form-control" name="pname" required/>
<label>Product Cost</label>
<input type="number" class="form-control" name="pcost" required/>
<label>Product Description</label>
<textarea name="pdescription" required></textarea>
<label>Product Image</label>
<input type="file" class="form-control" name="pimage" required/>
<input type="submit"  class="btn btn-success" value="Add"/>
<input type="reset"  class="btn btn-success" value="clear"/>
</form>
</body>
</html>