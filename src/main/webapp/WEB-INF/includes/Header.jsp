 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
 <title>NETBOOK</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<nav class="navbar navbar-dark bg-info navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="Home" style="color:lightblue font-family:snap ITC">NETBOOK</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav">
    <li  class="fa fa-book fa-3x" style="color:lightblue" ></li>
    <li class="active"><a href="#">Home</a></li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">PAGE 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="${pageContext.request.contextPath}/blog">Blog</a></li>
          <li><a href="${pageContext.request.contextPath}/forum">Forum</a></li>
          <li><a href="${pageContext.request.contextPath}/chat">Chat</a></li></ul>
          <sec:authorize access="isAuthenticated()">
          
         
          <li><a style="color:light blue">Hello <b><sec:authentication
										property="principal.username" /></b></a></li>
						<li><a href="${pageContext.request.contextPath}/perform_logout"><span
								class="glyphicon glyphicon-log-out">Logout</span></a></li>
					</sec:authorize>
           </ul>
<sec:authorize access="!isAuthenticated()">
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#reg" data-toggle="modal" data-target="#registration"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#log" data-toggle="modal" data-target="#login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
      </sec:authorize>
    </div>
 </div>
</nav>
  <!-- ModalRegistration Form -->
	<script src="${pageContext.request.contextPath}/resources/js/AngularControllers/Home.js"></script>
	<div><%@include file="/WEB-INF/includes/ModalRegistration.jsp"%></div>
    <div><%@include file="/WEB-INF/includes/ModalLogin.jsp"%></div>
      
</body>
</html>
 
 
 
 
 
 