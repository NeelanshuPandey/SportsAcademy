package sportsacademy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import sportsacademy.beans.Feedbackbean;
import sportsacademy.databaseinfo.DBConnection;

public class MemberDao{

	//name+email+rating+remark
	
	
	public int addFeedback(Feedbackbean fb) {   //doubt????
		// TODO Auto-generated method stub
		String cname=fb.getName();
		String cemail=fb.getEmail();
		String crating=fb.getRating();
		String cremark=fb.getRemark();
		
		java.util.Date dt=new java.util.Date();
		long d=dt.getTime();
		java.sql.Date ds=new java.sql.Date(d);
		
Connection con=DBConnection.openConnection();
		
		PreparedStatement ps=null;//it is coomunicate from db table
		//preparedStatement is interface
		
		String insertQuery="insert into Feedback( name, email, rating, remark, date)values(?,?,?,?,?)";
		int status=0;
		try {                         //      id, name, email, rating, remark, date
			
			ps=con.prepareStatement(insertQuery);//passes the query to DBMS and DBMS 
//			parser parse the query and compile the query and store the compiled query into buffer and assign
//			address of buffer to ps
			
			
			ps.setString(1,cname);//it will set in name column of contact table
			ps.setString(2,cemail);
			ps.setString(3,crating);
			ps.setString(4,cremark);
			ps.setDate(5, ds);
			System.out.println(ps);
		status=	ps.executeUpdate();//it will insert the data into contact table
		}
		catch( SQLException se)
		
		{
			
		se.printStackTrace();	
			
		}
		finally {
			
			try {
			if (ps!=null)
				ps.close();
			if(con!=null)
				con.close();
			}
		catch(SQLException se)
		{
			
		}
			}
		return status;
	
		
		
		
		
	}

}
