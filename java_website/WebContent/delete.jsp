<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="mentors.database.*,java.sql.*,mentors.bean.*,mentors.dao.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%! String email,name,password;
		int i=0;
		%>

<%
HttpSession s=request.getSession(false);    
	   name=(String)s.getAttribute("name");
	   password=(String)s.getAttribute("epass");
	   
	
	

	email=request.getParameter("email");
	try
	{
		Connection con=ConnectionFactory.getConnection();
		Statement st=con.createStatement();
		i= st.executeUpdate("delete from student_details where email='"+email+"'");
		
		if(i>0)
		{
			out.print("<script type='text/javascript'> alert('Deleted Sucessfully');</script>");
			
			Employee e1=new Employee(name,password);
			
			boolean status=EmployeeDao.validateEmployee(e1);
			if(status)
			{
				request.getRequestDispatcher("/loginsuccess.jsp").include(request,response);
			}
					
			
		}
		else
		{
			
			out.print("<script type='text/javascript'> alert('Error!');</script>");
			Employee e1=new Employee(name,password);
			
			boolean status=EmployeeDao.validateEmployee(e1);
			if(status)
			{
				request.getRequestDispatcher("/loginsuccess.jsp").include(request,response);
			}
		
		}
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}


%>

</body>
</html>