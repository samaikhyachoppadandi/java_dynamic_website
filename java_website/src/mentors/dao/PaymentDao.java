package mentors.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Date;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import mentors.action.GetDate;
import mentors.bean.PaymentBean;
import mentors.database.ConnectionFactory;

public class PaymentDao {

	public static boolean amountPaid(PaymentBean pm)
	{
		Date date;
		String sid,uname,fname,course;
		long phone;
		int course_fee,amount_paid,balance;
		boolean status=false;
		
		
		date=GetDate.getDate();
		sid=pm.getSid();
		uname=pm.getUsername();
		phone=pm.getPhone();
		fname=pm.getFname();
		course=pm.getCourse();
		course_fee=pm.getCourse_fee();
		amount_paid=pm.getAmount_paid();
		balance=(course_fee-amount_paid);
		
		try
		{
			Connection con=(Connection)ConnectionFactory.getConnection();
			PreparedStatement ps=con.prepareStatement("insert into payment_details(date,sid,sname,phone,father_name,course,course_fee,amount_paid,balance) values(?,?,?,?,?,?,?,?,?)");
			
			ps.setDate(1,date);
			ps.setString(2, sid);
			ps.setString(3,uname);
			ps.setLong(4,phone);
			ps.setString(5,fname);
			ps.setString(6,course);
			ps.setInt(7,course_fee);
			ps.setInt(8,amount_paid);
			ps.setInt(9,balance);
			
			int i=ps.executeUpdate();
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
	
	public static ResultSet getDues()
	{
		ResultSet rs=null;
		try
		{
			Connection c=(Connection) ConnectionFactory.getConnection();
			Statement s=(Statement) c.createStatement();
			
			rs=s.executeQuery("select * from payment_details where balance>0");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return rs;
		
	}
}
