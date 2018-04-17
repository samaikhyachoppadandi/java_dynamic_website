package mentors.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.jdbc.Statement;

import mentors.bean.Employee;
import mentors.bean.EmployeeBean;
import mentors.database.ConnectionFactory;

public class EmployeeDao {
	
	public static boolean validateEmployee(Employee e1)
	{
		boolean status=false;
		String userId,passWord;
		userId=e1.getUserId();
		passWord=e1.getPassWord();
		
		 try
		 {
   Connection con=ConnectionFactory.getConnection();
   
      PreparedStatement pst=con.prepareStatement("select emprole from employe_info where empid=? and emppassword=?");
		     
         pst.setString(1, userId );pst.setString(2, passWord);
      
  ResultSet rs=    pst.executeQuery();
      
		status= rs.next();
		 
		 }
    catch(Exception e)
		 {
    	 e.printStackTrace();
		 }
		return status;
		
	}
	
	
	public static boolean adminLogin(Employee e1)
	{
		String name,pass;
		boolean status=false;
		name=e1.getUserId();
		pass=e1.getPassWord();
		
		try
		{
			Connection c=ConnectionFactory.getConnection();
			Statement s=(Statement) c.createStatement();
			ResultSet r=s.executeQuery("select * from admin where admin_id='"+name+"' and admin_password='"+pass+"'");
			status=r.next();
		}
		catch(Exception e2)
		{
			e2.printStackTrace();
		}
		return status;
	}
	
	public static boolean enterDetails(EmployeeBean e1)
	{
		int i=0;
		boolean status=false;
		
		String name=e1.getName();
		String empid=e1.getEmpid();
		int age=e1.getAge();
		String gender=e1.getGender();
		String email=e1.getEmail();
		long phone=e1.getPhone();
		String fname=e1.getFname();
		String address=e1.getAddress();
		String role=e1.getRole();
		String password=e1.getPassword();
		
		try
		{
			Connection con=ConnectionFactory.getConnection();
			PreparedStatement pst=con.prepareStatement("insert into employe_details(ename,empId,age,gender,email,phone,father_name,address,role,password) values(?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1,name);
			pst.setString(2,empid);
			pst.setInt(3, age);
			pst.setString(4,gender);
			pst.setString(5,email);
			pst.setLong(6,phone);
			pst.setString(7, fname);
			pst.setString(8, address);
			pst.setString(9,role);
			pst.setString(10, password);
			
			i=pst.executeUpdate();
			if(i>0)
			{
				status=true;
				PreparedStatement ps=con.prepareStatement("insert into employe_info values(?,?,?)");
				ps.setString(1,empid);
				ps.setString(2, password);
				ps.setString(3,role);
				
				ps.executeUpdate();
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return status;
	}
	
	public static EmployeeBean getDetails(String email)
	{
		EmployeeBean e1=new EmployeeBean();
		String eid,name,empid,gender,email2,fname,address,role,password;
		int age;
		long phone;
		
		
		try
		{
			Connection con=ConnectionFactory.getConnection();
			Statement st=(Statement) con.createStatement();
			ResultSet rs=st.executeQuery("select * from employe_details where email='"+email+"'");
			if(rs.next())
			{
				eid=rs.getString(1);
				name=rs.getString(2);
				empid=rs.getString(3);
				age=rs.getInt(4);
				gender=rs.getString(5);
				email2=rs.getString(6);
				phone=rs.getLong(7);
				fname=rs.getString(8);
				address=rs.getString(9);
				role=rs.getString(10);
				password=rs.getString(11);
				
				
				e1.setEid(eid);
				e1.setName(name);
				e1.setEmpid(empid);
				e1.setAge(age);
				e1.setGender(gender);
				e1.setEmail(email2);
				e1.setPhone(phone);
				e1.setFname(fname);
				e1.setAddress(address);
				e1.setRole(role);
				e1.setPassword(password);
				
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return e1;
	}
	
	public static boolean updateDetails(EmployeeBean e1)
	{
		
			int i=0;
			boolean status=false;
			
			String eid=e1.getEid();
			String name=e1.getName();
			String empid=e1.getEmpid();
			int age=e1.getAge();
			String gender=e1.getGender();
			String email=e1.getEmail();
			long phone=e1.getPhone();
			String fname=e1.getFname();
			String address=e1.getAddress();
			String role=e1.getRole();
			String password=e1.getPassword();
			
			try
			{
				Connection con=ConnectionFactory.getConnection();
				PreparedStatement pst=con.prepareStatement("update employe_details set ename=?,empid=?,age=?,gender=?,email=?,phone=?,father_name=?,address=?,role=?,password=? where eid=?; ");
				pst.setString(1,name);
				pst.setString(2,empid);
				pst.setInt(3, age);
				pst.setString(4,gender);
				pst.setString(5,email);
				pst.setLong(6,phone);
				pst.setString(7, fname);
				pst.setString(8, address);
				pst.setString(9,role);
				pst.setString(10, password);
				pst.setString(11, eid);
				i=pst.executeUpdate();
				if(i>0)
				{
					status=true;
					PreparedStatement ps=con.prepareStatement("update employe_info set empid=?,emppassword=?,emprole=? where emppassword=?");
					ps.setString(1,empid);
					ps.setString(2, password);
					ps.setString(3,role);
					ps.setString(4, password);
					ps.executeUpdate();
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return status;
		

	}

	public static ResultSet showDetails()
	{
		ResultSet rs=null;
			
	 
		
		try
		{
			Connection con=ConnectionFactory.getConnection();
			
			Statement st =(Statement) con.createStatement();
			
			 rs=(ResultSet) st.executeQuery("select * from employe_details ");
		 
					}
		catch(Exception e){
			
			e.printStackTrace();
		}
		return rs;
	
	}
	
	public static boolean Accountent_login(Employee e1)
	{
		boolean status=false;
		String name,pass;
		
		name=e1.getUserId();
		pass=e1.getPassWord();
		
		try
		{
			Connection con=ConnectionFactory.getConnection();
			Statement s=(Statement) con.createStatement();
			ResultSet r=s.executeQuery("select * from accountent_info where accountent_id='"+name+"' and accountent_password='"+pass+"'");
			status=r.next();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
		
	}

}
