<%@page import="mentors.dao.*"%>
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

<title>UPDATEPAGE</title>
</head>
 
 
</head>
<body>
	<jsp:useBean id="pm" class="mentors.bean.PaymentBean"/>
	<%!String sid,uname,fname,course;
		long phone;
		int course_fee,amount_paid;
	%>
	<%
		sid=request.getParameter("sid");
		uname=request.getParameter("username");
		phone=Long.parseLong(request.getParameter("phone"));
		fname=request.getParameter("father_name");
		course=request.getParameter("course");
		course_fee=Integer.parseInt(request.getParameter("fee"));
		amount_paid=Integer.parseInt(request.getParameter("paid"));
		
		pm.setSid(sid);
		pm.setUsername(uname);
		pm.setPhone(phone);
		pm.setFname(fname);
		pm.setCourse(course);
		pm.setCourse_fee(course_fee);
		pm.setAmount_paid(amount_paid);
		
		boolean status=PaymentDao.amountPaid(pm);
		
		if(status)
		{
			out.print("<script type='text/javascript'> alert('Payment Sucessful');</script>");
			
		}
		else
		{
			out.print("<script type='text/javascript'> alert('Error in Payment');</script>");
		}
	
	
	
	%>
	</form>


</body>
</html>