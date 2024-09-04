<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display</title>
</head>
<body>
     <h2>This is Display</h2>
     
     <h6>Beginning of Display JSP</h6>
     
     <%-- <jsp:include page = "info.jsp">
       <jsp:param value="kapil" name="name"/>
       <jsp:param value="12345" name="salary"/>
     </jsp:include> --%>
     
     <jsp:forward page = "info.jsp">
       <jsp:param value="kapil" name="name"/>
       <jsp:param value="12345" name="salary"/>
     </jsp:forward>
     
     <h2>This is End of Display</h2>
     
     
</body>
</html>