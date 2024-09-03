<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Palindrome Check</title>
</head>
<body>

  <%
  
  int num1 = Integer.parseInt(request.getParameter("num1")) ;
  int copy = num1;
  int rev = 0 ;
  
  while(copy > 0){
	  int rem = copy % 10;
	  rev = (rev*10) + rem;
	  copy = copy/10;
  }
  if(num1 == rev){
	  out.println("palindrome");
  }else{
	  out.println("Not Palindrome");
  } 
  
  %>
  

</body>
</html>