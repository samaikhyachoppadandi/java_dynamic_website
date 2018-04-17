<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,mentors.bean.*,mentors.dao.*,mentors.database.ConnectionFactory" %>


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

<title>AdminPage</title>
</head>
 
 
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
	
	status=EmployeeDao.adminLogin(e1);
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
	}
	else
	{
		out.print("<script type='text/javascript'>alert('Error!')</script>");
		request.getRequestDispatcher("admin.html").include(request, response);
		
		
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
		
				<a href="addEmployee.jsp" class="button special" >ADD Employee</a>
				<a href="Emp_Update.jsp" class="button special" >Update Employee Details</a>	
				<a href="Emp_Delete.jsp" class="button special" >Delete Employee Details</a>
				
				<%
					request.getRequestDispatcher("/EmployeeTable.jsp").include(request, response);
				%>
			
		</div>
		
		
		
			 
</body>
</html>