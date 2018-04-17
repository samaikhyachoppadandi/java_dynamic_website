package mentors.action;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mentors.dao.*;
import mentors.bean.*;

public class StudentDetails extends HttpServlet {
	
    

		/**
	 **/
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    		response.setContentType("text/html");
    		
    		PrintWriter out=response.getWriter();
    		
    		String name=request.getParameter("username");
    		int age=Integer.parseInt(request.getParameter("age"));
    		String email=request.getParameter("email");
    		long phone=Long.parseLong(request.getParameter("cno"));
    		String fname=request.getParameter("fname");
    		String foccupy=request.getParameter("foccupation");
    		String address=request.getParameter("address");
    		String course=request.getParameter("course");
    		
    		
    		StudentBean s1=new StudentBean(name,age,email,phone,fname,foccupy,address,course);
	
    	    boolean status=StudentDao.details(s1);
    	
    	    if(status)
    	    {
    	    	
    	     
    	    	out.print("<script type= 'text/javascript'>alert('Registered Sucessfully' );</script>");
    	    	
    	    	out.print("Name:"+name+"\n<input type='button' value='Print' onclick='window.print()'>");
    	    	
    	    	
    	    	
    	        //request.getRequestDispatcher("/loginsuccess.jsp").include(request, response);
    	    
    	    }
    	    else
    	    {
    	    	
    	    	out.print("<script type='text/javaascript'>alret('ERROR!');</script>");
    	    	out.print("Re-Enter details");
    	    	request.getRequestDispatcher("/student_details.jsp").include(request, response);
    	    
    	    }
    	
    	}
    	
    	
    	

}
