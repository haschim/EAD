package book;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class BookManager {
    String url = "jdbc:postgresql://localhost/postgres";
    String login = "postgres";
    String password = "1234";
	
    public ArrayList<Book> getAllBooks1() throws SQLException, ClassNotFoundException {
    	Class.forName("org.postgresql.Driver");
    	Connection con = DriverManager.getConnection(url,login,password);
    	
    	String queryStr = "SELECT isbn, title FROM book";
    	Statement stmt = con.createStatement();
    	ResultSet rs = stmt.executeQuery(queryStr);
    	
    	ArrayList<Book> books = new ArrayList<Book>();
    	
    	while(rs.next()) {
    		int isbn = rs.getInt("isbn");
    		String title = rs.getString("title");
    		Book newBook = new Book();
    		newBook.setIsbn(isbn);
    		newBook.setTitle(title);
    		books.add(newBook);
    	}
    	
    	con.close();
    	stmt.close();
    	rs.close();
    	
    	return books;
    }
}
