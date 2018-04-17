<%@page import="mentors.database.ConnectionFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@page import="java.sql.*, mentors.bean.*"%>
<%@page import="mentors.dao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 	<title>Payment Page</title>
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

  
			
<!-- Student-Details -->
		
  



<body>

<%!String email; %>
	<%
		CourseBean cb1=new CourseBean();
		email=request.getParameter("email");
		UpdateBean ub=UpdateDao.update(email);
	    UpdateBean cb=CourseDao.getFee(ub);
	    
	%>
		
  <div class="container">
    <section class="register">
      <h3> </h3>
      <form method="post" action="amount_paid">
      <div class="reg_section personal_info">
      <h1>Studnt Information</h1>
       Student-ID:<input type="text" name="sid" value="<%=ub.getSid() %>" id="t0" readonly="readonly"><br>
  	  Name:<input type="text" name="username" value="<%=ub.getSname() %>" id="t1" readonly="readonly"><br>   
	  Phone-Number:<input type="text" name="phone" value="<%=ub.getPhone() %>" id="t4" readonly="readonly"><br>
	  Father Name:<input type="text" name="fname" value="<%=ub.getFather_name() %>" id="t5" readonly="readonly"><br>
	 
     Course:<input type="text" name="course" value="<%=ub.getCourse() %>" id="t5" readonly="readonly"><br>
     Course-Fee:<input type="text" name="fee" value="<%=cb.getFee() %>" readonly="readonly"><br>
     Amount Paid:<input type="text" name="paid"><br>
      <p class="submit"><input type="submit" name="commit" value="Pay">  <input type="button"  onclick="reset()" value="Reset"></p>
      
      </form>
    </section>
  </div>

  

</body>
</html>

</body>
</html>