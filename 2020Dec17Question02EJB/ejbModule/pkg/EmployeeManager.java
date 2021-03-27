package pkg;

import javax.ejb.Stateless;
import java.sql.*;

@Stateless
public class EmployeeManager {

    public EmployeeManager() {
    }
    
    private String url = "jdbc:postgresql://localhost/postgres";
    private String login = "admin";
    private String password = "admin";
    
    public Employee findEmployee(int empId) 
    		throws ClassNotFoundException, SQLException {
    	
    	Class.forName("org.postgresql.Driver");
    	Connection con = DriverManager.getConnection(url, login, password);
    	
    	String query = "SELECT id, name, address FROM employees WHERE id = '" + empId + "'";
    	
    	Statement stmt = con.createStatement();
    	ResultSet rs = stmt.executeQuery(query);
    	
    	Employee empObj = new Employee();
    	
    	while(rs.next()) {
    		empObj.setId(rs.getInt("id"));
    		empObj.setName(rs.getString("name"));
    		empObj.setAddress(rs.getString("address"));
    	}
   
    	con.close();
    	stmt.close();
    	rs.close();
    	
    	return empObj;
    }    
}
