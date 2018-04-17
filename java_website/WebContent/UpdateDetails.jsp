<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="mentors.bean.*,mentors.dao.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
	<%! private String  sid, name,email,fname,fo,address,course;
		private int age;
		private long phone;
		boolean status;	
		String ename,password;
		%>

	<%
	HttpSession s=request.getSession(false);    
	   ename=(String)s.getAttribute("name");
	   password=(String)s.getAttribute("epass");
	
		
	    
		sid=request.getParameter("sid");
		name=request.getParameter("username");
		age=Integer.parseInt(request.getParameter("age"));
		
		email=request.getParameter("email");
		phone=Long.parseLong(request.getParameter("phone"));
		fname=request.getParameter("fname");
		fo=request.getParameter("foccupation");
		address=request.getParameter("address");
		course=request.getParameter("course");
		
		UpdateBean u1=new UpdateBean();
		u1.setSid(sid);
		u1.setSname(name);
		u1.setAge(age);
		u1.setEmail(email);
		u1.setPhone(phone);
		u1.setFather_name(fname);
		u1.setFather_occupation(fo);
		u1.setAddress(address);
		u1.setCourse(course);
		
		boolean status=UpdateDao.updateDetails(u1);
		if(status)
		{
			out.print("<script type='text/javascript'> alert('Updateds Sucessfully');</script>");
			
				Employee e1=new Employee(name,password);
			
			 status=EmployeeDao.validateEmployee(e1);
			if(status)
			{
				request.getRequestDispatcher("/loginsuccess.jsp").include(request,response);
			}

		
		
		}
		else
		{
			out.print("<script type='text/javascript'> alert('Error!');</script>");
			
			Employee e1=new Employee(name,password);
			
			 status=EmployeeDao.validateEmployee(e1);
			if(status)
			{
				request.getRequestDispatcher("/loginsuccess.jsp").include(request,response);
			}


		}
	
	
	
	%>

</body>
</html>
