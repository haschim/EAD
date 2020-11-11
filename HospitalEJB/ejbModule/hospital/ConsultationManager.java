package hospital;

import javax.ejb.*;
import java.sql.*;
import java.util.ArrayList;

@Stateless
@LocalBean
public class ConsultationManager {
    public ConsultationManager() {
    }
    
    private String className = "org.postgresql.Driver";
    private String url = "jdbc:postgresql://localhost/postgres";
    private String login = "postgres";
    private String password = "1234";
    
    public int AddVisit(int cId, int dId, int pId, String conComments) 
    		throws SQLException, ClassNotFoundException {
    	
    	Class.forName(className);
    	Connection con = DriverManager.getConnection(url,login,password);
    	
    	String insertStr = "INSERT INTO consultation VALUES(?, ?, ?, ?)";
    	PreparedStatement pstmt = con.prepareStatement(insertStr);
    	
    	pstmt.setInt(1, cId);
    	pstmt.setInt(2, dId);
    	pstmt.setInt(3, pId);
    	pstmt.setString(4, conComments);
    	
    	int success = pstmt.executeUpdate();
    	
    	con.close();
    	pstmt.close();
    	
    	return success;
    }
    
    public int getLastCID() throws SQLException, ClassNotFoundException {
    	Class.forName(className);
    	Connection con = DriverManager.getConnection(url,login,password);
    
    	String queryStr = "SELECT MAX(" + '"' + "conId" + '"' + ") AS conId FROM consultation";
    	Statement stmt = con.createStatement();
    	
    	ResultSet rs = stmt.executeQuery(queryStr);
    	
    	int cId = 0;
    	
    	while(rs.next()) {
    		cId = rs.getInt("conId");
    	}
    	
    	con.close();
    	stmt.close();
    	rs.close();
    	
    	return cId;
    }
    
    public ArrayList<Consultation> getAllConsultations() throws SQLException, ClassNotFoundException {
    	Class.forName(className);
    	Connection con = DriverManager.getConnection(url,login,password);
    
    	String queryStr = "SELECT * FROM consultation";
    	Statement stmt = con.createStatement();
    	
    	ResultSet rs = stmt.executeQuery(queryStr);
    	
    	ArrayList<Consultation> consultations = new ArrayList<Consultation>();
    	
    	while(rs.next()) {
    		int conId = rs.getInt("conId");
    		int docId = rs.getInt("docId");
    		int patId = rs.getInt("patId");
    		String conComments = rs.getString("conComments");
    
    		Consultation conObj = new Consultation();
    		
    		conObj.setConId(conId);
    		conObj.setDocId(docId);
    		conObj.setPatId(patId);
    		conObj.setConComments(conComments);
    		
    		consultations.add(conObj);
    	}
    	
    	return consultations;
    }
}
