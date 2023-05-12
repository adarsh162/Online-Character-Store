<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@page import="tutorial.model.User"%>
<%@page import="tutorial.controller.Userdb"%>
<% 
User user = (User) session.getAttribute("user");
request.setAttribute("edit_user", user);
session.setAttribute("editUser", user);
   
   
%>




<!DOCTYPE html>
<html>
    <head>
    <title>Update Profile</title>
         <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

      
        <style>
        .col-12{
            max-width:50%;
            }
            .row{
            padding-right:400px;}
            .inner{
                position: relative;
                margin: 0 auto;
                width: 650px;
                display: block;
                padding: 50px 0;
            }
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
                    <div class="col-12">
                        <h3>
Edit Your Details</h3>
<form action="editprofreturn" method="post">
                            <div class="form-group">
                                <label>user ID</label>
                                <input class="form-control" name="bkid" value="${edit_user.id }" required>
                            </div>
<div class="form-group">
                                <label>Username</label>
                                <input class="form-control" name="bkname" value="${edit_user.username }" required>
                            </div>
<div class="form-group">
                                <label>Email</label>
                                <input class="form-control" name="bkemail" value="${edit_user.email}" required>
                            </div>
<div class="form-group">
                                <label>Password</label>
                                <input type="password" class="form-control" name="bkpassword" value="${edit_user.password}" required>
                            </div>
                           <div class="form-group">
                                <label>Image</label>
                                <input type="text" class="form-control" name="image" value="${edit_user.img}" required>
                            </div>
<div class="form-group" >
  
                                
                                
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
