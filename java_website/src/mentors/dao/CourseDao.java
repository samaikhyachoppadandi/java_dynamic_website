package mentors.dao;

import java.sql.*;

import mentors.bean.CourseBean;
import mentors.bean.UpdateBean;
import mentors.database.ConnectionFactory;

public class CourseDao {
	
	public static ResultSet getCourse()
	{
		ResultSet rs = null;
		try
		{
			Connection con=ConnectionFactory.getConnection();
			Statement st=con.createStatement();
			rs=st.executeQuery("select course_name from courses; ");
		
		}
	
		catch(Exception e)
		{
			e.printStackTrace();
		
		}
		
		return rs;
	}
	public static UpdateBean getFee(UpdateBean cb)
	{
		long fee;
		UpdateBean cb1=new UpdateBean();
		String course=cb.getCourse();
		try
		{
			Connection c=ConnectionFactory.getConnection();
			Statement s=c.createStatement();
			ResultSet r=s.executeQuery("select course_fee from courses where course_name='"+course+"'");
			r.next();
			fee=r.getLong(1);
			cb1.setFee(fee);
		}
		catch(Exception e1)
		{
			e1.printStackTrace();
		}
		
		
		return cb1;
		
	}
	
	
}
