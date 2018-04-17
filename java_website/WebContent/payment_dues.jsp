<%@ page import="mentors.dao.*,java.sql.*" %>
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
<table border="1">
	
		<tr>
			<th>Receipt ID</th>
			<th>Student ID</th>
			<th>Student Name</th>
			<th>Contact No</th>
			<th>Course</th>
			<th>Course Fee</th>
			<th>Amount Paid</th>
			<th>Balance</th>
		</tr>
		
		<% 
			/*Connection c=ConnectionFactory.getConnection();
			Statement s=c.createStatement();*/
			ResultSet r=PaymentDao.getDues();/* s.executeQuery("select * from student_details");*/
			while(r.next())
			{
		%>		
				<tr>
					<td><%= r.getString(1) %></td>
					<td><%= r.getString(3) %></td>
					<td><%= r.getString(4) %></td>
					<td><%= r.getLong(5) %></td>
					<td><%= r.getString(7) %></td>
					<td><%= r.getInt(8) %></td>
					<td><%= r.getInt(9) %></td>
					<td><%= r.getInt(10) %></td>
				</tr>			
			
			<% }%>
		
		
	</table>
			 
</body>
</hatml>