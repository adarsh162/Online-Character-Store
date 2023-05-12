<%@page import="tutorial.model.User"%>
<%@page import="tutorial.controller.Userdb"%>
<%@page  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@ page isELIgnored="false" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<title>My Profile</title>
</head>
 <style>
 
            .inner{
                margin: 15px 0;
            }
        </style>
        
<body>
<%@include file="navbar.jsp" %>
<% User user = (User) session.getAttribute("user");
   
   
%>
 
<h2>
 Your Profile :</h2>

<a href="editprof"><button type="button" class="btn btn-primary">Update Profile</button></a>


 <h2 style="text-align:center"><img src="${user.img}"  style="border-radius:50%;height:30%;width:20%;"></h2>
   <h2 style="text-align:center">User id : ${user.id }</h2>
   <h2 style="text-align:center">User name: ${user.getUsername()}</h2>
   <h2 style="text-align:center">E-mail: ${user.email}</h2>
   <h2 style="text-align:center">Password : ${user.password}</h2>
   <h2 style="text-align:center">Phone no. : ${user.phone }</h2>
   <h2 style="text-align:center">Address : ${user.address}</h2>
                        
<hr size="30"></hr>
                       

</body>
 <%@include file="footer.jsp" %>
</html>