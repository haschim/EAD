package hospital;

import javax.ejb.*;
import java.sql.*;
import java.util.ArrayList;

@Stateless
@LocalBean
public class DoctorManager {
    public DoctorManager() {
    }

    private String className = "org.postgresql.Driver";
    private String url = "jdbc:postgresql://localhost/postgres";
    private String login = "postgres";
    private String password = "1234";
    
    public ArrayList<Doctor> getAllDoctors() throws SQLException, ClassNotFoundException {
    	Class.forName(className);
    	Connection con = DriverManager.getConnection(url,login,password);
    	
    	String queryStr = "SELECT * FROM doctor";
    	Statement stmt = con.createStatement();
    	
    	ResultSet rs = stmt.executeQuery(queryStr);
    	
    	ArrayList<Doctor> doctors = new ArrayList<Doctor>();
    	
    	while(rs.next()){
    		int docId = rs.getInt("docId");
    		String docName = rs.getString("docName");
    		String docSpeciality = rs.getString("docSpeciality");
    		
    		Doctor docObj = new Doctor();
    		
    		docObj.setDocId(docId);
    		docObj.setDocName(docName);
    		docObj.setDocSpeciality(docSpeciality);
    		
    		doctors.add(docObj);
    	}
    	
    	con.close();
    	stmt.close();
    	rs.close();
    	
    	return doctors;
    }
}
