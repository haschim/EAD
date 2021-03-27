package book;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.jsp.jstl.sql.ResultSupport;
import javax.servlet.jsp.jstl.sql.Result;

public class BookManager {
	
    String url = "jdbc:postgresql://localhost/postgres";
    String login = "postgres";
    String password = "1234";
    
    public Result getAllBooks2() throws SQLException, ClassNotFoundException {
    	Class.forName("org.postgresql.Driver");
    	Connection con = DriverManager.getConnection(url,login,password);
    	
    	String queryStr = "SELECT isbn, title FROM book";
    	Statement stmt = con.createStatement();
    	ResultSet rs = stmt.executeQuery(queryStr);
   
    	Result result = ResultSupport.toResult(rs);
    	
    	con.close();
    	stmt.close();
    	rs.close();
    	
    	return result;
    }
}
