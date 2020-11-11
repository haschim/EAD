package hospital;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

@Stateless
@LocalBean
public class PatientManager {
    public PatientManager() {
    }
    
    private String className = "org.postgresql.Driver";
    private String url = "jdbc:postgresql://localhost/postgres";
    private String login = "postgres";
    private String password = "1234";
    
    public ArrayList<Patient> getAllPatients() throws SQLException, ClassNotFoundException {
    	Class.forName(className);
    	Connection con = DriverManager.getConnection(url,login,password);
    	
    	String queryStr = "SELECT * FROM patient";
    	Statement stmt = con.createStatement();
    	
    	ResultSet rs = stmt.executeQuery(queryStr);
    	
    	ArrayList<Patient> patients = new ArrayList<Patient>();
    	
    	while(rs.next()){
    		int patId = rs.getInt("patId");
    		String patName = rs.getString("patName");
    		Patient patObj = new Patient();
    		patObj.setPatId(patId);
    		patObj.setPatName(patName);
    		patients.add(patObj);
    	}
    	
    	con.close();
    	stmt.close();
    	rs.close();
    	
    	return patients;
    }
}
