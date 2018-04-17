<%@page import="mentors.database.ConnectionFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@page import="java.sql.*, mentors.bean.*"%>
<%@page import="mentors.dao.*"%>
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
		
		<script type="text/javascript">
 		function reset()
 		{
 			document.getElementById("t1").value="";
 			document.getElementById("t2").value="";
 			document.getElementById("t3").value="";
 			document.getElementById("t4").value="";
 			document.getElementById("t5").value="";
 			document.getElementById("t6").value="";
 			document.getElementById("t7").value="";
 			document.getElementById("t8").value="";
 		}
 	
 	</script>
		
		
		
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
<%!String email; %>
	<%
		email=request.getParameter("email");
	
	  
		
	 
		
		 UpdateBean ub=UpdateDao.update(email);
		
		/*out.println("Student_ID:"+ub.getSid()+"<br/>");
		out.println("Student Name:"+ub.getSname()+"<br/>");
		out.println("Student Age:"+ub.getAge()+"<br/>");
		out.println("Student Email:"+ub.getEmail()+"<br/>");
		out.println("Student Phone:"+ub.getPhone()+"<br/>");
		out.println("Father Name:"+ub.getFather_name()+"<br/>");
		out.println("Father Occupation:"+ub.getFather_occupation()+"<br/>");
		out.println("Address:"+ub.getAddress()+"<br/>");
		out.println("Course:"+ub.getCourse()+"<br/>");*/
	
	
	
	%>
		
  <div class="container">
    <section class="register">
      <h3> </h3>
      <form method="post" action="update_details">
      <div class="reg_section personal_info">
      <h1>Studnt Information</h1>
       Student-ID:<input type="text" name="sid" value="<%=ub.getSid() %>" id="t0" readonly="readonly"><br>
  	  Name:<input type="text" name="username" value="<%=ub.getSname() %>" id="t1"><br>   
	  Age:<input type="text" name="age" value="<%=ub.getAge() %>" id="t2"><br>
	  E-mail:<input type="text" name="email" value="<%=ub.getEmail() %>" id="t3"><br>
	  Phone-Number:<input type="text" name="phone" value="<%=ub.getPhone() %>" id="t4"><br>
	  Father Name:<input type="text" name="fname" value="<%=ub.getFather_name() %>" id="t5"><br>
	  Father Occupation:<input type="text" name="foccupation" value="<%=ub.getFather_occupation() %>" id="t6"><br>
      Address:<br><textarea name="address" value=""id="t7"><%=ub.getAddress() %></textarea><br>
	  </div>
	  
      
     <!-- Courses -->
     Course:<select name="course">
     			<option>C</option>
     			<option>C++</option>
     			<option>JAVA</option>
     			<option>Android</option>
     			<option>SQL</option>
     			<option>.NET</option>
     			<option>REDHAT</option>
     			<option>BIGDATA</option>
     			<option>DBA</option>
     			<option>PL/SQL</option>
     			<option>Linux</option>
     			
     
     		</select>
    
    
      <p class="submit"><input type="submit" name="commit" value="Update">  <input type="button"  onclick="reset()" value="Reset"></p>
      
      </form>
    </section>
  </div>

  

</body>
</html>

</body>
</html>