package sportsacademy.dao;

import sportsacademy.beans.Contact;
import sportsacademy.databaseinfo.DBConnection;

import java.sql.*;

public class CommonDao {

	
	
	
	public int addContact(Contact c) {
		String cname=c.getName();
		String cemail=c.getEmail();
		String cphone=c.getPhone();
		String cquestion=c.getQuestion();
		
		Connection con=DBConnection.openConnection();
		
		PreparedStatement ps=null;//it is coomunicate from db table
		//preparedStatement is interface
		
		String insertQuery="insert into contact( name, email, phone, question)values(?,?,?,?)";
		int status=0;
		try {
			
			ps=con.prepareStatement(insertQuery);//passes the query to DBMS and DBMS 
//			parser parse the query and compile the query and store the compiled query into buffer and assign
//			address of buffer to ps
			
			
			ps.setString(1,cname);//it will set in name column of contact table
			ps.setString(2,cemail);
			ps.setString(3,cphone);
			ps.setString(4,cquestion);
			
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
