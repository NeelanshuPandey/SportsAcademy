package sportsacademy.dao;
import java.sql.*;
import java.util.ArrayList;

import sportsacademy.beans.Contact;
import sportsacademy.beans.Feedbackbean;
import sportsacademy.databaseinfo.DBConnection;

public class AdminDao {

	public ArrayList<Contact> allContacts()
	{
	ArrayList <Contact>contactList=new ArrayList<>();//type safe array list
		//<>is known as generics->parameterised
	//it will store contact bean data
	Connection con=DBConnection.openConnection();
	PreparedStatement ps=null;
	ResultSet rs=null;
	String selectQuery="select * from contact order by name ";
	
	try {
		ps=con.prepareStatement(selectQuery);
	rs=	ps.executeQuery();//to execute select Query
	
	while(rs.next()) {   //it will put the cursor in the resultant data set and return true if there is data
	 int cid=rs.getInt("id");//fetch the data from id column
	 String cname=rs.getString("name");
	 String cemail=rs.getString("email");
	 String cphone=rs.getString("phone");
	 String cquestion=rs.getString("question");
	 Contact c=new Contact(cid,cname,cemail,cphone,cquestion);
	 
	 contactList.add(c);
	 
	}	
		
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
		
	}
	}
		return contactList;
	

		
		
		
}//all contact close
	
	
	//all feedback
	
	
	public ArrayList<Feedbackbean> allFeedback()
	{
	ArrayList <Feedbackbean>FeedbackList=new ArrayList<>();//type safe array list
		//<>is known as generics->parameterised
	//it will store contact bean data
	Connection con=DBConnection.openConnection();
	PreparedStatement ps=null;
	ResultSet rs=null;
	String selectQuery="select * from Feedback order by name ";
	
	try {
		ps=con.prepareStatement(selectQuery);
	rs=	ps.executeQuery();//to execute select Query
	
//	 <!--  id, name, email, rating, remark, date -->
	
	while(rs.next()) {   //it will put the cursor in the resultant data set and return true if there is data
	 int cid=rs.getInt("id");//fetch the data from id column
	 
	 
	 
	 String cname=rs.getString("name");
	 String cemail=rs.getString("email");
	 String crating=rs.getString("rating");
	 String cremark=rs.getString("remark");
	 Date d=rs.getDate("date");
	 
	 Feedbackbean f=new Feedbackbean(cid,cname,cemail,crating,cremark,d);
	 
	 FeedbackList.add(f);
	 
	}	
		
	}
	catch(SQLException se)
	{
		
		
		
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
		return FeedbackList ;}
	
		
		public int deleteContact(String[] idArray) {
			
			Connection con=DBConnection.openConnection();
			
			PreparedStatement ps=null;
			String deleteQuery="delete from contact where id=?";
			try {
				ps=con.prepareStatement(deleteQuery);
				con.setAutoCommit(false);
				
				
				
				for(int i=0;i>idArray.length;i++) {
					ps.setInt(1, Integer.parseInt(idArray[i]));
					//int x=ps.executeUpdate();//=>go to dbms for each query execution
					ps.addBatch();//adding date into buffer
				
			}
				int flag=1;
				
				int[] deletestatus =ps.executeBatch();
				
				for(int i=0;i<deletestatus.length;i++)
				{
					
					if(deletestatus[i]<0) {
						flag=0;
						
					}
					
				}
				if (flag==1)
				{
					
					con.setAutoCommit(true);
					return 1;
				}
				
			}catch(SQLException se) {
				
				se.printStackTrace();
			}
			return 0;
		}// close contact delete

public int deleteFeedback(String[] idArray) {
			
			Connection con=DBConnection.openConnection();
			
			PreparedStatement ps=null;
			String deleteQuery="delete from Feedback where id=?";
			try {
				ps=con.prepareStatement(deleteQuery);
				con.setAutoCommit(false);
				
				
				
				for(int i=0;i>idArray.length;i++) {
					ps.setInt(1, Integer.parseInt(idArray[i]));
					//int x=ps.executeUpdate();//=>go to dbms for each query execution
					ps.addBatch();//adding date into buffer
				
			}
				int flag=1;
				
				int[] deletestatus =ps.executeBatch();
				
				for(int i=0;i<deletestatus.length;i++)
				{
					
					if(deletestatus[i]<0) {
						flag=0;
						
					}
					
				}
				if (flag==1)
				{
					
					con.setAutoCommit(true);
					return 1;
				}
				
			}catch(SQLException se) {
				
				se.printStackTrace();
			}
			return 0;
		}
}
