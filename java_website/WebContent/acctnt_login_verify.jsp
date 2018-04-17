<%@ page import="mentors.bean.*,mentors.dao.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accountent Page</title>
</head>
<body>
<%!
	String ename,pass;
	boolean status;
	String name; %>
<%
	ename=request.getParameter("ename");
	pass=request.getParameter("epass");
	
	Employee e1=new Employee(ename,pass);
	
	status=EmployeeDao.Accountent_login(e1);
	if(status)
	{
		  
        session.setAttribute("ename",ename);
        session.setAttribute("epass",pass);
        
		HttpSession s=request.getSession(false);  
		if(session!=null)
		{  
			 name=(String)s.getAttribute("ename");  
 
		}
		out.print("<script type='text/javascript'>alert('Login sucess!')</script>");
		%>
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

		<a href="make_payment.jsp" class="button special" >Make Payment</a>
		<a href="payment_dues.jsp"class="button special">Dues</a>
		<a href="delete_details.jsp"class="button special">Delete Details</a>
		<a href="Std_view_details.jsp"class="button special">View Details</a>
	
	
</div>


	
	
	
	<%}
	else
	{
		out.print("<script type='text/javascript'>alert('Error!')</script>");
		request.getRequestDispatcher("admin.html").forward(request, response);
		
		
	}
	

%>

	
</body>
</html>