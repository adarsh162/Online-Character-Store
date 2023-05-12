<%@page import="tutorial.model.User"%>
<%@page import="tutorial.controller.Userdb"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%
%>




<%@page import="java.util.List"%>
<%@page import="tutorial.model.products"%>
<%@page import="tutorial.connection.myConnection"%>
<%@page import="tutorial.model.products"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
   Userdb pData = new Userdb(myConnection.getConnection());
    List<User> user = pData.getAlluser();
    request.setAttribute("USER_LIST", user);
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<title>Show customers</title>
</head>
 <style>
 
            .inner{
                margin: 15px 0;
            }
        </style>
<body>
<body class="img js-fullheight" style="background-image: url(resources/images/bg.jpg);">
<%@include file="navbar.jsp" %>
<a href="home" style="padding-left:1500px;"><button type="button" class="btn btn-success">Home</button></a>
<h1 style="padding-left:300px;">All Customers : </h1>

<table class="table" style="outline:dashed">
                            <thead class="bg-light">
<tr>
                                    <th scope="col">User id</th>
                                    <th scope="col">Customer</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Password</th>
                                    <th scope="col">Phone_No</th>
                                    <th scope="col">Address</th>
                                    <th scope="col">Photo</th>
                                   
                                </tr>
</thead>
                            <tbody>
 <c:forEach var="temp" items="${USER_LIST}">
                              
                  <tr>              

                                        
                                        
                                        <td>${temp.id }</td>
                                        <td>${temp.username }</td>
                                        <td>${temp.email }</td>
                                        <td>${temp.password}</td>
                                        <td>${temp.phone }</td>
                                        <td>${temp.address}</td>
                                        <td><img src="${temp.img}" style="border-radius:50%;height:20%;width:10%;"></td>
                                        
                                        
                                         <td>
                                    </tr>
                                 
                                    
</c:forEach>
<br></br><br></br><br></br><br></br><br></br><br></br>
<hr size="30"></hr>
                        

</body>
</html>