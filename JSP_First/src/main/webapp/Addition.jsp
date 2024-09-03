<%@ page import="java.util.*"  language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Addition</title>
</head>
<body>
  <h2>This is Addition Page..</h2>
  <p>
     <%
     
     ArrayList<Integer> numbers = new ArrayList<Integer>();
        int num1 = Integer.parseInt(request.getParameter("number1")) ;
        int num2 = Integer.parseInt(request.getParameter("number2")) ;
        
        numbers.add(num1);
        numbers.add(num2);
        int sum = num1+num2;
      
     
     %>
     The Sum of <%= num1%> and <%= num2 %> is equal to <%=sum %> <br><br>
     Total Numbers Used For Addition Are <%= numbers %>
  
  
  
  </p>

</body>
</html>


<!-- If We want to use any collection inside the JSP then we need to import this in the page Directive. -->