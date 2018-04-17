<%@page import="mentors.database.ConnectionFactory,mentors.dao.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 	<title>Registration Form</title>
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
			  <link rel="stylesheet" href="css/registrationstyle.css"/>
			
		</noscript>

<title></title>
</head>
 
 
</head>
<body>
<%! String name; %>
<%
HttpSession s=request.getSession(false);  
if(session!=null){  
 name=(String)s.getAttribute("ename");  
 
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
			
<!-- Employee-Details -->
		
  



<body>
  <div class="container">
    <section class="register">
      <h3>Employee Registration </h3>
      <form method="post" action="Emp_Registration">
      <div class="reg_section personal_info">
      <h1></h1>
      Full-Name:<input type="text" name="username" value="" placeholder="Username"><br>
      EmpId:<input type="text" name="empid" value="" placeholder="Enter Unique ID"><br>
	  Age:<input type="text" name="age" value="" placeholder="Enter Age"><br>
	  Gender:<!-- <input type="radio" name="gender" value="male" checked>Male<br>
	  		 <input type="radio" name="gender" value="female">Female<br>
	  		 <input type="radio" name="gender" value="other" >Other<br> -->
	  		 <select name="gender">
	  		 	<option>Male</option>
	  		 	<option>Female</option>
	  		 	<option>Other</option>
	  		 </select>
	  		 
	  E-mail:<input type="text" name="email" value="" placeholder="E-mail Address"><br>
	  
	  Phone-Number:<input type="text" name="phone" value="" placeholder="Contact Number"><br>
	  Father Name:<input type="text" name="fname" value="" placeholder="Father Name"><br>
	  
      Address:<br><textarea name="address" id=""></textarea><br>
	  </div>
	 <!-- role -->
	  Employee-Role:<select name="role">
	  					<option><--SELECT--></option>
	  					<option>Accountant</option>
	  					<option>Receptionist</option>
	  					<option>Manager</option>
    				</select>
      <p class="submit"><input type="submit" name="commit" value="Register"></p>
      </form>
    </section>
  </div>

  

</body>
</html>

</body>
</html>