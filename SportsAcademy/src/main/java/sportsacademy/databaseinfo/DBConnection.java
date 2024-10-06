package sportsacademy.databaseinfo;
import java.sql.*;
public class DBConnection {

	private static Connection con;
	
	public static Connection openConnection()
	{
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver"); //forName method is used to create obj in memory 
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sports_db","root","Manu@8808");
		}
		catch(ClassNotFoundException| SQLException cse)
		
		{
			System.out.println(cse);
			
		}
		return con;
	}
	public static void main(String[] args) {
		
	Connection con=DBConnection.openConnection();
	System.out.println(con);
		
		
	}
	
}
