<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
   
   <%
   
   
   String user = request.getParameter("username");
   String pass = request.getParameter("password");
   
   if("admin".equalsIgnoreCase(user) && "Admin@123".equalsIgnoreCase(pass)){
	   out.println("Welcome User");
   }else{
	   out.println("Sorry Incorrect Username or Password.. ");
   }
     
   
   %>
   
</body>
</html>