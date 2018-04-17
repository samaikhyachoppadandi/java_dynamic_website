<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="mentors.dao.*,mentors.bean.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%! String name,empid,gender,email,password,fname,address,role;
		int age;
		boolean status;
		long phone;
	%>
	<jsp:useBean id="e1" class="mentors.bean.EmployeeBean"/>
	<%
		PasswordGenerator p=new PasswordGenerator();
		password=p.nextSessionId();
		
		name=request.getParameter("username");
		empid=request.getParameter("empid");
		age=Integer.parseInt(request.getParameter("age"));
		gender=request.getParameter("gender");
		email=request.getParameter("email");
		phone=Long.parseLong(request.getParameter("phone"));
		fname=request.getParameter("fname");
		address=request.getParameter("address");
		role=request.getParameter("role");
		
		e1.setName(name);
		e1.setEmpid(empid);
		e1.setAge(age);
		e1.setGender(gender);
		e1.setPassword(password);
		e1.setEmail(email);
		e1.setPhone(phone);
		e1.setFname(fname);
		e1.setAddress(address);
		e1.setRole(role);
		
		status=EmployeeDao.enterDetails(e1);
		
		if(status)
			
		{

				out.print("<script type='text/javascript'>alert('Registered Sucessfully')</script>");
				request.getRequestDispatcher("/Admin_Login.jsp").include(request,response);
		
		}
		else
		{
			out.print("<script type='text/javascript'>alert('Error!')</script>");
				
			
		}
	
	
	
	%>
	
</body>
</html>