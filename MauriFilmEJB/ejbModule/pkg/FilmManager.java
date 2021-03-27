package pkg;

import javax.ejb.Stateless;
import java.sql.*;

@Stateless
public class FilmManager {

    public FilmManager() {
    }

    private String url = "jdbc:postgresql://localhost/postgres";
    
    private String login = "guest";
    private String password = "guest";
    
    public int addFilm(int id, String title, String starCast, int rate) 
    		throws ClassNotFoundException, SQLException {
    	
    	Class.forName("org.postgresql.Driver");
    	Connection con = DriverManager.getConnection(url, login, password);
    	
    	String insertQuery = "INSERT INTO film VALUES(?, ?, ?, ?)";
    	
    	PreparedStatement pstmt = con.prepareStatement(insertQuery);
    	pstmt.setInt(1, id);
    	pstmt.setString(2, title);
    	pstmt.setString(3, starCast);
    	pstmt.setInt(4, rate);
    	
    	
    	int rowCount = pstmt.executeUpdate();
    	
    	con.close();
    	pstmt.close();
    	
    	return rowCount;
    }
}
