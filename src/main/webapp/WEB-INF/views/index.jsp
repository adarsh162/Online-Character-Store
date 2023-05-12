<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
</head>
<body>
  <h1>This is Home Page.</h1>
  <h1>Called by Home Controller.</h1>
  <h1>url/home</h1>
  
   <% 
       String name=(String)request.getAttribute("name");
   
   
   
   %>
   <h1>Name is : <%=name%></h1>
</body>
</html>