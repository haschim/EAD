package library;

import javax.ejb.Stateless;
import java.sql.*;

@Stateless
public class RegisterManager {

	// no-args ctor
    public RegisterManager() {
    }
    
    String url = "jdbc:postgresql://localhost/library";
    String login = "postgres";
    String password = "1234";
    
    public boolean register(Register registerObj) 
    		throws ClassNotFoundException, SQLException, javax.servlet.ServletException {
    	Class.forName("org.postgresql.Driver");
    	
    	Connection con = DriverManager.getConnection(url, login, password);
    	
    	String insertQry = "INSERT INTO register VALUES(?,?,?,?,?,?)";
    	PreparedStatement pstmt = con.prepareStatement(insertQry);
    	
    	pstmt.setString(1, registerObj.getUsername());
    	pstmt.setString(2, registerObj.getFirstname());
    	pstmt.setString(3, registerObj.getLastname());
    	pstmt.setString(4, registerObj.getRole());
    	pstmt.setString(5, registerObj.getEmail());
    	pstmt.setString(6, registerObj.getPassword());
    	
    	int rowCount = pstmt.executeUpdate();
    
    	con.close();
    	pstmt.close();
    	
    	if(rowCount == 0)
    		return false;
    	else 
    		return true;
    }    
}
