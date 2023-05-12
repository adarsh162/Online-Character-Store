
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>

<html lang="en">
  <head>
  	<title>Registration</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">

	</head>
	<body class="img js-fullheight" style="background-image: url(resources/images/bg.jpg);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Registration</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
		      	<h3 class="mb-4 text-center">Don't Have an account?</h3>
		      	<form action="processform" class="signin-form" method="post">
		      	    <div class="form-group">
		      			<input type="text" class="form-control" name="username" placeholder="Username" required>
		      		</div>
		      		<div class="form-group">
		      			<input type="text" class="form-control" name="email" placeholder="Email-address" required>
		      		</div>
	            <div class="form-group">
	              <input id="password-field" name="password" type="password" class="form-control" placeholder="Password" required>
	              <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
	            </div>
	            <div class="form-group">
	              <input id="password-field" name="password2" type="password" class="form-control" placeholder="Confirm Password" required>
	              <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
	            </div>
	             <div class="form-group">
		      			<input type="number" class="form-control" name="phone" placeholder="Phone no." required>
		      		</div>
		      	 <div class="form-group">
		      			<input type="text-area" class="form-control" name="address" placeholder="Address" required>
		      		</div>
		      		 <div class="form-group">
		      			<input type="text" class="form-control" name="image" placeholder="Image" required>
		      		</div>
	            <div class="form-group">
	            	<button type="submit" class="form-control btn btn-primary submit px-3">Sign Up</button>
	            </div>
	            <div class="form-group d-md-flex">
	            	<div class="w-50">
		            	<label class="checkbox-wrap checkbox-primary">Remember Me
									  <input type="checkbox" checked>
									  <span class="checkmark"></span>
									</label>
								</div>
						<div class="w-50 text-md-right">
									<a href="log" style="color: #fff">Already have account?</a>
								</div>
								
	            </div>
	          </form>
	          <p class="w-100 text-center">&mdash; Or Sign In With &mdash;</p>
	          <div class="social d-flex text-center">
	          	<a href="#" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span> Facebook</a>
	          	<a href="#" class="px-2 py-2 ml-md-1 rounded"><span class="ion-logo-twitter mr-2"></span> Twitter</a>
	          	<!--   <a href="log"><button type="button" class="btn btn-success">Already have Account?</button></a>-->
	          </div>
		      </div>
				</div>
			</div>
		</div>
	</section>

	<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
  <script src="<c:url value="/resources/js/popper.js" />"></script>
  <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
  <script src="<c:url value="/resources/js/main.js"/>"></script>

	</body>
</html>

