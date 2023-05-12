<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.List"%>
<%@page import="tutorial.model.products"%>
<%@page import="tutorial.connection.myConnection"%>
<%@page import="tutorial.controller.productdb"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <title>Add Product</title>

        <style>
            .inner{
                margin: 15px 0;
            }
        </style>
        <style>

    </style>
<title>Add Product</title>
</head>
<body>
<%@include file="navbar.jsp" %>
   
   <div class="container" style="padding-left:390px">
            <div class="inner">
                <div class="row">
                
                    <div class="col-md-6" style="outline:outset">
                    <h3>Enter Product Information</h3>
<form action="addproduct" method="post">
                            <div class="form-group">
                                <label>Product Name</label>
                                <input class="form-control" name="bkname" required>
                            </div>
<div class="form-group">
                                <label>Description</label>
                                <input class="form-control" name="bkdes"  required>
                            </div>
<div class="form-group">
                                <label>Price</label>
                                <input type="number" class="form-control" name="authname"  required>
                            </div>
<div class="form-group">
                                <label>Image</label>
                                <input type="text" class="form-control" name="img"  required>
                            </div>
<div class="form-group" >
                                <label>Category</label>
                                <select id="inputState" class="form-control" name="category" required>
                                    <option selected disabled>Choose Category</option>
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
<button type="submit" class="btn btn-success">Submit</button>
                            <button type="reset" class="btn btn-primary">Reset</button>
                        </form>
                        </div>
                        </div>
                        </div>
</div>
<hr size="30"></hr>
                        <%@include file="footer.jsp" %>
</body>
</html>