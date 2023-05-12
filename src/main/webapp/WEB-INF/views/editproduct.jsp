<%@page import="tutorial.model.products"%>
<%@page import="tutorial.controller.productdb"%>
<%@page import="tutorial.connection.myConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>

 <%
    int id = Integer.parseInt(request.getParameter("id"));
    productdb bkd = new productdb(myConnection.getConnection());
    products bk = bkd.getSingleproduct(id);
    request.setAttribute("edit_product", bk);
%>



<!DOCTYPE html>
<html>
    <head>
         <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

        <title>Edit Book Data</title>
        <style>
            .inner{
                position: relative;
                margin: 0 auto;
                width: 650px;
                display: block;
                padding: 50px 0;
            }
            .col-12{
            max-width:50%;
            }
            .row{
            padding-right:350px;}
            h3{
                text-align: center;
                border-bottom: 2px solid midnightblue;
                margin-bottom: 20px;
            }
            nav li a{
                font-size: 25px;
                font-weight: 500;
            }
            a{
                color: #fff;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
    <%@include file="navbar.jsp" %>
       <div  class="container-fluid">
            <nav class="navbar navbar-light">
                <a class="navbar-brand">Character Store</a>
                <ul class="navbar-nav ml-auto mt-3 mx-5">
<li class="nav-item">
                            <a class="nav-link active" href="home">Home</a>
                        </li>
</ul>
</nav>
        </div>
<div class="inner">
            <div class=" container">
                <div class="row">
                    <div class="col-10">
                        <h3>Edit Product Details </h3>
<form action="editproduct" method="post">
                            <div class="form-group">
                                <label>Product ID</label>
                                <input class="form-control" name="bkid" value="${edit_product.id }" required>
                            </div>
<div class="form-group">
                                <label>Product Name</label>
                                <input class="form-control" name="bkname" value="${edit_product.pName }" required>
                            </div>
<div class="form-group">
                                <label>Description</label>
                                <input class="form-control" name="bkdes" value="${edit_product.pDesc}" required>
                            </div>
<div class="form-group">
                                <label>Price</label>
                                <input type="number" class="form-control" name="authname" value="${edit_product.price}" required>
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input type="text" class="form-control" name="img"  value="${edit_product.img}" required>
<div class="form-group" >
  
                                <label>Category</label>
                                <select id="inputState" class="form-control" name="category" value="${edit_product.cat}" required>
                                     <option value="0">Choose Category</option>
                                    <option value="Disney">Disney</option>
                                    <option value="Pixar">Pixar</option>
                                    <option value="Shinchan">Shinchan</option>
                                    <option value="Marvel">Marvel</option>
                                    <option value="Doremon">Doremon</option>
                                    <option value="Harry Potter">Harry Potter</option>
                                    <option value="Scooby Do">Scooby Do</option>
                                     <option value="Dc">Dc</option>    
                                </select>
                            </div>
<button type="submit" class="btn btn-primary">Submit</button>
                           <a href="home"><button  class="btn btn-danger">Cancel</button></a>
                        </form>
</div>
</div>
</div>
</div>
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <hr size="30"></hr>
                        <%@include file="footer.jsp" %>
    </body>
</html>
