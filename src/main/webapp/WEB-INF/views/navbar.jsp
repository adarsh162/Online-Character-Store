<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<nav class="navbar navbar-icon-top navbar-expand-lg navbar-dark bg-dark">
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
  <a class="navbar-brand" href="#">Shopping.com</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home">
         <i class="glyphicon glyphicon-home"></i>
          
          Home
          <span class="sr-only">(current)</span>
          </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="myprof">
          <i class="fa fa-envelope-o">
            <span class="badge badge-danger">11</span>
          </i>
          My account
        </a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link " href="Register">
<i class="glyphicon glyphicon-user"></i>
          Add new User
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="addp">
<i class="glyphicon glyphicon-plus"></i>
          Add new Product
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="mycart">
<i class="glyphicon glyphicon-shopping-cart"></i>
          My Cart
        </a>
        </li>
        <li class="nav-item">
        <a class="nav-link " href="contact">
<i class="glyphicon glyphicon-envelope"></i>
          Contact Us
        </a>
        </li>

  
      <li class="nav-item">
        <a class="nav-link" href="logout">
        <i class="glyphicon glyphicon-log-out"></i>
          Log out
        </a>
      </li>

    
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Search..." aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search<i class="glyphicon glyphicon-search"></i></button>
    </form>
  </div>
  
 <h2 style="background-color:white;">
  <% 
  DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
   LocalDateTime now = LocalDateTime.now();
   out.println(dtf.format(now));
   %>
   </h2>
  
</nav>
