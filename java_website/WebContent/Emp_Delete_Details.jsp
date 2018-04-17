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
<%! String email,name,password,pass;
		int i=0,i1=0;
		%>

<%
HttpSession s=request.getSession(false);    
	   name=(String)s.getAttribute("ename");
	   password=(String)s.getAttribute("epass");
	   
	
	

	email=request.getParameter("email");
	try
	{
		Connection con=ConnectionFactory.getConnection();
		Statement s1=con.createStatement();
		ResultSet r=s1.executeQuery("select * from employe_details where email='"+email+"'");
		if(r.next())
		{
			
		
				pass=r.getString(11);
		
		
			Statement st=con.createStatement();
			i= st.executeUpdate("delete from employe_details where email='"+email+"'");
			
			if(i>0)
			{
				out.print("<script type='text/javascript'> alert('Deleted Sucessfully');</script>");
				
				i1=st.executeUpdate("delete  from employe_info where emppassword='"+pass+"'");
				
				//request.getRequestDispatcher("/Admin_Login.jsp").include(request,response);
				
			
					
			
			}
		}
		else
		{
			
			out.print("<script type='text/javascript'> alert('Error!');</script>");
			
				//request.getRequestDispatcher("/Admin_Login.jsp").include(request,response);
			
		
		}
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}


%>

</body>
</html>