package Mastermind_java;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseUtil {
	
	private static final String URL = "PLACEHOLDER_URL";
    private static final String USER = "PLACEHOLDER_USER";
    private static final String PASSWORD = "PLACEHOLDER_PASSWORD";

    public static Connection getConnection() throws SQLException {
    	try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    	
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
    
    
    /*
	public DatabaseUtil() {
		// TODO Auto-generated constructor stub
	}
	*/

}
