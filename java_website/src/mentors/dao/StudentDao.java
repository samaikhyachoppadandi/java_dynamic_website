package mentors.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

import mentors.database.ConnectionFactory;
import mentors.bean.*;
public class StudentDao {
	public static boolean	details(StudentBean s1)
		{
			int i=0;
			boolean status=false;
			
			String name=s1.getName();
			int age=s1.getAge();
			String email=s1.getEmail();
			long phone=s1.getPhone();
			String fname=s1.getFname();
			String foccupy=s1.getFoccupy();
			String address=s1.getAddress();
			String course=s1.getCourse();
			
			
			try
			{
					Connection con=ConnectionFactory.getConnection();
					
					PreparedStatement pst=con.prepareStatement("insert into student_details(sname,age,email,phone,father_name,father_occupation,address,course) values(?,?,?,?,?,?,?,?)");
					
					
				
					pst.setString(1, name );
					pst.setInt(2, age);
					pst.setString(3, email );
					pst.setLong(4, phone );
					pst.setString(5, fname );
					pst.setString(6, foccupy );
					pst.setString(7, address );
					pst.setString(8, course );
					
					
					i=  pst.executeUpdate();
					if(i>0)
					{	
						status= true;
					}
					else
					{
						status=false;
					}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return status;
		
	}
	
}