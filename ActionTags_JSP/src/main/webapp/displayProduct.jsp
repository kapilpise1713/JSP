<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Details</title>
</head>
<body>

    <jsp:useBean id="product" class="com.productinfo.Product">
          <jsp:setProperty name="product" property="*"/>
    </jsp:useBean>

     
     <h2>THE PRODUCT DETAILS ARE AS FOLLOWS :</h2>
     
    Id: <jsp:getProperty property="id" name = "product" /><br>
    Name: <jsp:getProperty property="name" name = "product" /><br>
    Description: <jsp:getProperty property="description" name = "product" /><br>
    Price: <jsp:getProperty property="price" name = "product" /><br>
     
     
</body>
</html>