package mvc.database;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;

public class DBConnection {
	public static Connection getConnection() throws SQLException, ClassNotFoundException{
		Connection conn = null;
		
		String url = "jdbc:mysql://localhost:3306/webmarketdb";        
		String id = "root";                                                    
		String pw = "1234";   
		

		Class.forName("com.mysql.jdbc.Driver");  
		conn=DriverManager.getConnection(url,id,pw); 
		
		return conn;
	}
}
