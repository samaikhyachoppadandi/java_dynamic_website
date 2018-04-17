package mentors.dao;

import java.sql.Connection;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

import mentors.bean.CourseBean;
import mentors.bean.UpdateBean;
import mentors.database.ConnectionFactory;

public class UpdateDao {

	public static UpdateBean update(String email)
	{
	
		UpdateBean ub1=new UpdateBean();
	 
		
		try
		{
			Connection con=ConnectionFactory.getConnection();
			
			Statement st =(Statement) con.createStatement();
			
			ResultSet rs=(ResultSet) st.executeQuery("select * from student_details where email='"+email+"'");
		 
			if(rs.next())
			{
				String sid=rs.getString(1);
				String name1=rs.getString(2);
				int age1=rs.getInt(3);
				String email1=rs.getString(4);
				long phone1=rs.getLong(5);
				String fn=rs.getString(6);
				String fo=rs.getString(7);
				String addr1=rs.getString(8);
				String course1=rs.getString(9);
				
				CourseBean cb=new CourseBean();
				cb.setCourse(course1);
				
				
				ub1.setSid(sid);
				ub1.setSname(name1);
				ub1.setAge(age1);
				ub1.setEmail(email1);
				ub1.setPhone(phone1);
				ub1.setFather_name(fn);
				ub1.setFather_occupation(fo);
				ub1.setAddress(addr1);
				ub1.setCourse(course1);
				
			
				
			}
			else
			{
				System.out.println("ERROR!");
			}
			
			
		}
		catch(Exception e){
			
			e.printStackTrace();
		}
		return ub1;
	
	}//update
	
	
	public static boolean updateDetails(UpdateBean u1)
	{
		
		boolean status=false;
		int i=0;
		
		String sid=u1.getSid();
		String name=u1.getSname();
		int age=u1.getAge();
		String email=u1.getEmail();
		long phone =u1.getPhone();
		String fn=u1.getFather_name();
		String fo=u1.getFather_occupation();
		String address=u1.getAddress();
		String course=u1.getCourse();
		
		try
		{
			Connection con=ConnectionFactory.getConnection();
			PreparedStatement pst=(PreparedStatement) con.prepareStatement("update  student_details set sname=?,age=?,email=?,phone=?,father_name=?,father_occupation=?,address=?,course=? where sid=?");
			pst.setString(1,name);
			pst.setInt(2,age);
			pst.setString(3,email);
			pst.setLong(4,phone);
			pst.setString(5,fn);
			pst.setString(6,fo);
			pst.setString(7,address);
			pst.setString(8,course);
			pst.setString(9, sid);
			
			i=pst.executeUpdate();
			if(i>0)
			{
				status=true;
				
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public static ResultSet getDetails()
	{
		ResultSet rs=null;
			
	 
		
		try
		{
			Connection con=ConnectionFactory.getConnection();
			
			Statement st =(Statement) con.createStatement();
			
			 rs=(ResultSet) st.executeQuery("select * from student_details ");
		 
					}
		catch(Exception e){
			
			e.printStackTrace();
		}
		return rs;
	
	}


}

