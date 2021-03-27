package book;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.jsp.jstl.sql.*;


public class BookManager {
	public Result getAllBooks2() throws SQLException, ClassNotFoundException{
		Class.forName("org.postgresql.Driver");
		
		String url="jdbc:postgresql://localhost/library"; 
		String login="postgres";
		String password="postgres";
		
		Connection con = DriverManager.getConnection(url,login,password);
		
		String queryStr ="SELECT * FROM book";
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(queryStr);
		
		return(ResultSupport.toResult(rs));
	}
}
