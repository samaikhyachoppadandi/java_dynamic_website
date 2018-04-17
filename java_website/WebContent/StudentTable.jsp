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
			<th>Student ID</th>
			<th>Student Name</th>
			<th>Email</th>
			<th>Contact No</th>
			<th>
				<select>
					<%
						/*Connection con=ConnectionFactory.getConnection();
						Statement st=con.createStatement();*/
						ResultSet rs=CourseDao.getCourse();/*st.executeQuery("select course_name from courses ");*/
						
						while(rs.next())
						{
							
					%>
							<option><%= rs.getString(1) %> </option>	
							
							<%}%>
				</select>
				
				
				
										
			</th>
		
		
		</tr>
		
		<% 
			/*Connection c=ConnectionFactory.getConnection();
			Statement s=c.createStatement();*/
			ResultSet r=UpdateDao.getDetails();/* s.executeQuery("select * from student_details");*/
			while(r.next())
			{
		%>		
				<tr>
					<td><%= r.getString(1) %></td>
					<td><%= r.getString(2) %></td>
					<td><%= r.getString(4) %></td>
					<td><%= r.getLong(5) %></td>
					<td><%= r.getString(9) %></td>
					
				</tr>			
			
			<% }%>
		
		
	</table>
	
	
</body>
</html>