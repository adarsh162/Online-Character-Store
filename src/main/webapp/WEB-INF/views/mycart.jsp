<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="tutorial.model.User"%>
<%@page import="tutorial.controller.Userdb"%>
<%@page import="tutorial.model.products"%>
<%@page import="tutorial.controller.productdb"%>
<%@page import="tutorial.connection.myConnection"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<title>My Cart</title>
</head>
<%   User user = (User) session.getAttribute("user");
    productdb pData = new productdb(myConnection.getConnection());
    List<products> p = pData.getAllproductsoforder(user.getId());
    int a=pData.getorderprice(user.getId());
    request.setAttribute("P_LIST", p);
%>
<body>
<%@include file="navbar.jsp" %>
<div class="col-md-9">
 
     
                        <h3>My Cart :</h3>
<table class="table" style="border:solid">
                            <thead class="bg-light">
<tr>
                                    <th scope="col">Product Name</th>
                                    <th scope="col">Description</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Action</th>
                                    <th scope="col">Image</th>
                                    <% int price=0; %>
                                    
                                </tr>
</thead>
                            <tbody>
                             <c:forEach var="temp" items="${P_LIST}">
                              
                  <tr>              

                                        
                                        
                                        <td>${temp.pName }</td>
                                        <td>${temp.pDesc }</td>
                                        
                                        <td>${temp.price }</td>
                                       
                                         <td><a href="deletefromcart?id=${temp.id}"><button type="button" class="btn btn-danger">Remove</button></a></td>
                                        
                                         <td><img src="${temp.img}" style="height:200px;width:150px;"></td>
                                    </tr>
</c:forEach>
                      
                            </tbody>
                        </table>
                        
</div>

 <a href="checkp?price=<%=a%>"><button type="button" class="btn btn-success">Check Out</button></a>
 
 <h3>Total Amount : <% out.print(a); %> $</h3>
<br></br><br></br><br></br><br></br><br></br><br></br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<hr size="30"></hr>
                        <%@include file="footer.jsp" %>
</body>
</html>