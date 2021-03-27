package library;

import javax.ejb.Stateless;
import java.sql.*;

@Stateless
public class LoginManager {

	// no args ctor
    public LoginManager() {
    }

    String url = "jdbc:postgresql://localhost/library";
    String login = "postgres";
    String password = "1234";
    
    public Login login(String username, String password) 
    		throws ClassNotFoundException, SQLException {
    	Class.forName("org.postgresql.Driver");
    	
    	Connection con = DriverManager.getConnection(url, login, this.password);
    	Statement stmt = con.createStatement();
    	
    	String query = "SELECT username, password, role "
    					+ "FROM register "
    					+ "WHERE username = '" + username + "' "
    					+ "AND password = '" + password + "'";
    	
    	ResultSet rs = stmt.executeQuery(query);
    	
    	Login loginObj = new Login();
    	
    	while(rs.next()) {
    		loginObj.setUsername(rs.getString("username"));
    		loginObj.setPassword(rs.getString("password"));
    		loginObj.setRole(rs.getString("role"));
    	}
    	
    	con.close();
    	stmt.close();
    	rs.close();
    	
    	return loginObj;
    }
}
