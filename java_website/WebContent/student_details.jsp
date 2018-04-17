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
			
<!-- Student-Details -->
		
  



<body>
  <div class="container">
    <section class="register">
      <h3>Register in Mentors </h3>
      <form method="post" action="student_details">
      <div class="reg_section personal_info">
      <h1>Your Personal Information</h1>
      Name:<input type="text" name="username" value="" placeholder="Username"><br>
	  Age:<input type="text" name="age" value="" placeholder="Enter Age"><br>
	  E-mail:<input type="text" name="email" value="" placeholder="E-mail Address"><br>
	  Phone-Number:<input type="text" name="cno" value="" placeholder="Contact Number"><br>
	  Father Name:<input type="text" name="fname" value="" placeholder="Father Name"><br>
	  Father Occupation:<input type="text" name="foccupation" value="" placeholder="Father Occupation"><br>
      Address:<br><textarea name="address" id=""></textarea><br>
	  </div>
	  
	  <!-- Educational-Details -->
	  <!--  <h1>Educational Background</h1>
	  <table border="1">
	  	<tr><th>Qualification</th><th>Institute</th><th>Year Of Passing</th><th>Percentage</th><th>Specialization</th></tr>
	  	<tr>
	  		<td>10th/SSC</td>
	  		<td><input type="text" name="sscin"></td>
	  		<td><input type="text" name="sscyp"></td>
	  		<td><input type="text" name="sscpr"></td>
	  		<td><input type="text" name="sscsp"></td>
	  	</tr>
		
		<tr>
	  		<td>Inter</td>
	  		<td><input type="text" name="interin"></td>
	  		<td><input type="text" name="interyp"></td>
	  		<td><input type="text" name="interpr"></td>
	  		<td><input type="text" name="intersp"></td>
	  	</tr>
	  	
		<tr>
	  		<td>Degree</td>
	  		<td><input type="text" name="degreein"></td>
	  		<td><input type="text" name="degreeyp"></td>
	  		<td><input type="text" name="degreepr"></td>
	  		<td><input type="text" name="degreesp"></td>
	  	</tr>
	  		  
	  </table> -->
	 <!-- Courses -->
	  Course:<select name="course">
      				<% ResultSet rs=CourseDao.getCourse(); 
      						while(rs.next())
      						{
      
      				%>
   								<option><%=rs.getString(1)%></option>
    					 	<%} %>
    		</select>
      <p class="submit"><input type="submit" name="commit" value="Register"></p>
      </form>
    </section>
  </div>

  

</body>
</html>

</body>
</html>