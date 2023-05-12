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
 
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet" href="<c:url value="/resources/css/style2.css" />">
<title>Home</title>
 <style>
            .inner{
                margin: 15px 0;
            }
            
           
        </style>
</head>
<% User user = (User) session.getAttribute("user");
    
   
%>
<%
    productdb pData = new productdb(myConnection.getConnection());
    List<products> p = pData.getAllproducts();
    request.setAttribute("P_LIST", p);
    String a=(String)session.getAttribute("isadmin");
%>
<body>
<body class="img js-fullheight" style="background-image: url(resources/images/bg.jpg);">
<%@include file="navbar.jsp" %>
 <h1 style="text-align:center">Online Character store</h1>

  <h1 style="text-align:center"> <% if (a!=null){
	 out.print("Welcome to Admin Section, ");
	 }
  else{
	  out.print("Welcome Customer, ");
  }
 %> ${user.username }</h1>
    <h1 style="text-align:center">Your Email is : ${user.email}</h1>
    <a href="myprof"><img src="${user.img}" style="border-radius:50%;height:15%;width:8%;margin-left: 91%;
    margin-top: -15%;"></a>
    <hr>
    
  
    
  <!--  <a href="myprof"><button type="button">My Account</button></a>
   <a href="log"><button type="button">Log Out</button></a>
   <a href="addp"><button type="button">Add Product</button></a>
   <a href="mycart"><button type="button">My cart</button></a>-->
   <div class="col-md-9">
  
     <a href="showcus"><button type="button" class="btn btn-primary">Show All Customers</button>
                        <h1 style="text-align:center">Our Products :</h1>
                        <br><br><br><br><br><br>

    <div class="container" style="margin-left:245px;">
      <div class="row" >
     
      <c:forEach var="temp" items="${P_LIST}">
     <div class="col-md-3 ftco-animate">
          <div class="product" style="border:solid;margin-top:20px;">
            <a href="openp?id=${temp.id}"" class="img-prod"><img class="img-fluid" src="${temp.img}" style="height:320px;width:240px;padding-left:10px;padding-top:20px;"
                alt="Colorlib Template">
             
            </a>
            <div class="text py-3 pb-4 px-3 text-center">
              <h3 style="background:white;">${temp.pName }</h3>
            
                <div class="pricing">
                  <p class="price" >
                    <span class="price-sale" style="background:white;">Price : ${temp.price } $</span>
                  </p>
                </div>
              
              
              <div class="bottom-area d-flex px-3">
                <div class="m-auto d-flex">
                  
                   <% if(a!=null) %><a href="editp?id=${temp.id}"><% if(a!=null) %><button type="button" class="btn btn-primary" >
                   <% if(a!=null) %><i class="glyphicon glyphicon-edit"></i>
                    </button>
                  </a>
                  <a href="cartp?id=${temp.id}"><button type="button" class="btn btn-success" style="margin-left:20px;">
                   <% if(a!=null) %> <i class="glyphicon glyphicon-shopping-cart"></i>
                   <% if(a==null){out.print("Add to Cart");} %></button>
                  </a>
                  <% if(a!=null) %><a href="deletep?id=${temp.id}"> <% if(a!=null) %><button type="button" class="btn btn-danger" style="margin-left:20px;">
                  <% if(a!=null) %> <i class="glyphicon glyphicon-trash"></i></button>
                  </a>


                </div>
              </div>
            </div>
          </div>
        </div>
        </c:forEach>
         </div>
    </div>
  
                        
                        
</div>
<br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br>
<br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br><br><br><br><br><br>


	
<hr size="30"></hr>
                        <%@include file="footer.jsp" %>
                         <section class="ftco-section testimony-section" style="background-color:#c4d4c1">
    <div class="container">
      <div class="row justify-content-center mb-5 pb-3">
        <div class="col-md-7 heading-section ftco-animate text-center">
          <span class="subheading">Testimony</span>
          <h2 class="mb-4">Developed By :</h2>
         
        </div>
      </div>
      <div class="row ftco-animate">
        <div class="col-md-12">
          
            <div class="item">
              <div class="testimony-wrap p-4 pb-5">
                <div class="user-img mb-5" ><img src="resources/images/adarsh.png" style="border-radius:50%;height:30%;width:20%;margin-left:40%">
                  <span class="quote d-flex align-items-center justify-content-center">
                    <i class="icon-quote-left"></i>
                  </span>
                </div>
                <div class="text text-center">
                  <p class="mb-5 pl-4 line">Far far away, behind the word mountains, far from the countries Vokalia and
                    Consonantia, there live the blind texts.</p>
                  <h3 class="name">Adarsh Suthar</h3>
                  <span class="position">Backend Developer</span>
                  <div class="container">

               <br>
           <div class="social-links" style="margin-right:6%">
             <a href="https://twitter.com/AdarshSuthar3"><i class="fa fa-twitter"></i></a>
             <a href="https://www.facebook.com/adarsh.suthar.10/"><i class="fa fa-facebook"></i></a>
             <a href="https://www.instagram.com/adarsh_s_162/"><i class="fa fa-instagram"></i></a>
             <a href="https://www.linkedin.com/in/adarsh-suthar-8586aa214/"><i class="fa fa-linkedin"></i></a>
           </div>     
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

</body>
</html>