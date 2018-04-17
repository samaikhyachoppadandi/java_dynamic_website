<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="mentors.dao.*,mentors.database.*,java.sql.*,mentors.bean.* " %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>	

	<h1 style="text-align:center;font-color:blue;">Registered Students</h1>
	
	<table border="1">
	
		<tr>
			<th>Emp ID</th>
			<th>Emp Name</th>
			<th>Login Id</th>
			<th>Password</th>
			<th>Email</th>
			<th>Contact No</th>
			<th>Role</th>
		</tr>
		
		<% 
			/*Connection c=ConnectionFactory.getConnection();
			Statement s=c.createStatement();*/
			ResultSet r=EmployeeDao.showDetails();/* s.executeQuery("select * from student_details");*/
			while(r.next())
			{
		%>		
				<tr>
					<td><%= r.getString(1) %></td>
					<td><%= r.getString(2) %></td>
					<td><%= r.getString(3) %></td>
					<td><%= r.getString(11) %></td>
					<td><%= r.getString(6) %></td>
					<td><%= r.getLong(7) %></td>
					
					<td><%=r.getString(10) %>
				</tr>			
			
			<% }%>
		
		
	</table>
	
	
</body>
</html>