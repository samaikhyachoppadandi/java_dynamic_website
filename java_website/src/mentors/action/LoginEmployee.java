package mentors.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mentors.bean.Employee;
import mentors.dao.EmployeeDao;

 
public class LoginEmployee extends HttpServlet {
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  response.setContentType("text/html");	
	  
	   PrintWriter out= response.getWriter();
		String name=request.getParameter("ename");
		String password=request.getParameter("epass");
		
		Employee e1=new Employee(name,password);
		
		boolean status=EmployeeDao.validateEmployee(e1);
		if(status)
		{
			HttpSession session=request.getSession();  
	        session.setAttribute("name",name);
	        session.setAttribute("epass",password);
			   request.getRequestDispatcher("loginsuccess.jsp").forward(request, response);
			   
		}
		else
		{
			  out.println("<script> alert('Invalid Details');</script>");
              request.getRequestDispatcher("employee.html").include(request, response);			
		}
	}

}
