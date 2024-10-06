package sportsacademy.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import sportsacademy.beans.Member_Registration_bean;
import sportsacademy.databaseinfo.DBConnection;

public class MemberRegistrationDao {

	public int  addMember(Member_Registration_bean mrb)
	{
		int status=0;

		String id=mrb.getMember_id();
		String pass=mrb.getPassword();
		String name=mrb.getName();
		String email=mrb.getEmail();
		String phone=mrb.getPhone();
		String address=mrb.getAddress();
		String sp=mrb.getSports_name();
		String pl=mrb.getPlan_name();
		Date d=mrb.getDate();
		
		
		Connection con=DBConnection.openConnection();
		PreparedStatement ps=null;
		//ResultSet rs=null;
		String insertQuery="insert into member(member_id, password, name, email, phone, address, sports_name, plan_name, date)values(?,?,?,?,?,?,?,?,?) ";
		
		try {
			ps=con.prepareStatement(insertQuery);
		//to execute select Query
		
//		while(rs.next()) {   //it will put the cursor in the resultant data set and return true if there is data
		//fetch the data from id column
         
			ps.setString(1,id);
			ps.setString(2,pass);
			ps.setString(3,name);//it will set in name column of contact table
			ps.setString(4,email);
			ps.setString(5,phone);
			ps.setString(6,address);
			ps.setString(7, sp);
			ps.setString(8, pl);
			ps.setDate(9, d);
			
		status=	ps.executeUpdate();
		
		}
		catch(SQLException se)
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
			se.printStackTrace();
		}
	}
		return status;
	
	}}
	