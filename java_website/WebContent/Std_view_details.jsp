<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,mentors.database.ConnectionFactory" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 
 <head>
<meta charset="ISO-8859-1">
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />

		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->

		<script src="js/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-xlarge.css" />
			<link rel="stylesheet" href="css/student_details.css" />
			
			
		</noscript>

<title>WELCOMEPAGE</title>
</head>
 
 
</head>
<body>
<%! String name; %>
<%
HttpSession s=request.getSession(false);  
if(session!=null){  
 name=(String)s.getAttribute("name");  
 
}  
%>

  
<!-- Header -->
			<header id="header" class="skel-layers-fixed">
				<h1><a href="#">ORACLE MENTORS EMPLOYEE &nbsp;<%=name.toLowerCase() %></a></h1>
				<nav id="nav">
					<ul>
						<li><a href="index.html">HOME</a></li>
						<li><a href="services.html">SERVICES</a></li>
						<li><a href="about.html">ABOUT US</a></li>
						<li><a href="newbatch.html">NEW BATCHES</a></li>
						<li><a href="logout.jsp" class="button special">LogOut</a></li>
					</ul>
				</nav>
			</header>

<!-- Student Deatils -->

	<div id="student_details" style="text-align:center; vertical-align:top">
		
				<a href="loginsuccess.jsp"class="button special">back</a>
			
			
		</div>
		
		
		<% request.getRequestDispatcher("/StudentTable.jsp").include(request,response); %>
			 
</body>
</hatml>