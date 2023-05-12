<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Page</title>
<link rel="stylesheet" href="<c:url value="/resources/css/checkout.css" />">
<script type="text/javascript">
function conf()
{
var con=confirm("Do you want to Pay for sure?");
}
</script>
</head>
<% int a=Integer.parseInt(request.getParameter("price")); %>

<body>
 
 <a class="nav-link active" href="home"><button type="button" class="btn btn-primary">Home</button></a>
<div class="wrapper">
  <div class="card">  
    <h2 class="visa">VISA</h2>
    <h3 class="num">n° 4539  7111  0342  0778</h3>

      <h4>name</br>Foulen</h4>
      <h4>EXP</br>10/21</h4>
      <h4>CVC</br>014</h4>

  </div>
  <div class="main">
    <div class="content">
      <h1>Payment Details</h1>
      <form>
        
     <!--   <label>Name</label>-->
        <input id="name" type="name" value="Foulen">
        
       <!-- <label>Card Number</label>-->
        <input type="text" value="4539 7111 0342 0778">
        
      <!--  <label>Expiration Date</label>-->
        <input type="month" value="2021-10">
        <input type="user" value="014">
        
      </form>
      <div class="payment">
        <h4>Payment Amount :<div class ="amount"><%out.print(a); %> $</div></h4> 
        <form action="home1"><button onClick="conf()">Pay</button></form>
       
        </div>
    </div>
  </div>
</div>
</body>
</html>