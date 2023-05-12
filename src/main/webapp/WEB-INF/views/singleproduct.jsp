<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="tutorial.model.User"%>
<%@page import="tutorial.controller.Userdb"%>
<%@page import="tutorial.model.products"%>
<%@page import="tutorial.controller.productdb"%>
<%@page import="tutorial.connection.myConnection"%>
<%@page import="java.util.List"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 
<title>Insert title here</title>
</head>
<% 
int id = Integer.parseInt(request.getParameter("id"));

productdb bkd = new productdb(myConnection.getConnection());
products bk = bkd.getSingleproduct(id); 
%>
<body>
<body class="img js-fullheight" style="background-image: url(resources/images/bg.jpg);">

<%@include file="navbar.jsp" %>
   <h1 style="text-align:center">Product-Information :</h1>
   
   <h2 style="text-align:center"><img src="<%=bk.getImg() %>"  style="height:380px;width:260px;"></h2>
   <h2 style="text-align:center">Product name: <%=bk.getpName() %></h2>
   <h2 style="text-align:center">Product-Discription: <%=bk.getpDesc() %></h2>
   <h2 style="text-align:center">Category : <%=bk.getCat() %></h2>
   <h2 style="text-align:center">Buy At : $<%=bk.getprice() %></h2>
   <% String a=(String)session.getAttribute("isadmin"); %>
   
       <% if(a!=null) %><a href="editp?id=<%=bk.getId()%>"><% if(a!=null) %><button type="button" class="btn btn-primary" style="margin-left:700px" >
                   <% if(a!=null) %>Edit</i>
                    </button>
                  </a>
                  <a href="cartp?id=<%=bk.getId()%>"><% if(a!=null) %><button type="button" class="btn btn-success" style="margin-left:20px;">
                   <% if(a!=null) %>Add to Cart</i></button>
                   </a>
                   
                   <% if(a==null)%><a href="cartp?id=<%=bk.getId()%>"><% if(a==null) %><button type="button" class="btn btn-success" style="margin-left:760px;">Add to Cart</button>
                  </a>
                  <% if(a!=null) %><a href="deletep?id=<%=bk.getId()%>"> <% if(a!=null) %><button type="button" class="btn btn-danger" style="margin-left:20px;">
                  <% if(a!=null) %>Delete</button>
                  </a>
   
</body>
</html>