package pkg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Starter {

	private int id;
	private String name;
	private double price;
	
	public int getId() throws ClassNotFoundException, SQLException {
		getLatestId(); //from Database
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
    String url = "jdbc:postgresql://localhost/catering";
    String className = "org.postgresql.Driver"; //Class.forName(String) -> parameter
    String login = "postgres";
    String password = "1234";
	
	public String addStarter() throws ClassNotFoundException, SQLException {
    	Class.forName(className);
    	
    	Connection con = DriverManager.getConnection(url,login,password);
    	
    	String insertStr = "INSERT INTO starter VALUES(?, ?, ?)";
    	
    	PreparedStatement pstmt = con.prepareStatement(insertStr);
    	pstmt.setInt(1, id);
    	pstmt.setString(2, name);
    	pstmt.setDouble(3, price);
    	
    	pstmt.executeUpdate();
    	
    	con.close();
    	pstmt.close();
    	
		return "sucess";
	}
	
	private void getLatestId() throws SQLException, ClassNotFoundException {
    	
		Class.forName(className);
    	Connection con = DriverManager.getConnection(url,login,password);
    	
    	String queryStr = "SELECT MAX(id) AS id FROM starter";
    	Statement stmt = con.createStatement();
    	ResultSet rs = stmt.executeQuery(queryStr); 	

    	while(rs.next()) {    		
    		id = rs.getInt("id");
    	}
    
    	id++; //increment last id from table by 1
    	 
    	con.close();
    	stmt.close();
    	rs.close();
	}
}
