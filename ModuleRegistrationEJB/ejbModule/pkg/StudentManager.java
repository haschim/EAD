package pkg;

import javax.ejb.*;
import java.sql.*;

@Stateless
public class StudentManager {
	
	// empty constructor can be omitted
    public StudentManager() {
    }
    
    private String url = "jdbc:postgresql://localhost/postgres";
    private String login = "admin";
    private String pwd = "admin";
    
    public int addStudent(int id, String name, String code) 
    		throws ClassNotFoundException, SQLException {
    	Class.forName("org.postgresql.Driver");
    	
    	Connection con = DriverManager.getConnection(url, login, pwd);
    	
    	String sql = "INSERT INTO student VALUES(?,?,?)";
    	
    	PreparedStatement pstmt = con.prepareStatement(sql);
    	pstmt.setInt(1, id);
    	pstmt.setString(2, name);
    	pstmt.setString(3, code);
    	
    	int rowCount = pstmt.executeUpdate();
    	
    	con.close();
    	pstmt.close();
    	
    	return rowCount;
    }
}
