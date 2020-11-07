package book;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

@Stateless
@LocalBean
public class BookManager {
	
	//no-args ctor
    public BookManager() {}

    String url = "jdbc:postgresql://localhost/postgres";
    String className = "org.postgresql.Driver"; //Class.forName(String) -> param
    String login = "postgres";
    String password = "1234";
    String table = "book";
    
    public int createBook(int isbn, String title) throws SQLException, ClassNotFoundException {
    	Class.forName(className);
    	
    	Connection con = DriverManager.getConnection(url,login,password);
    	
    	String insertStr = "INSERT INTO book VALUES(?,?)";
    	
    	PreparedStatement pstmt = con.prepareStatement(insertStr);
    	pstmt.setInt(1, isbn);
    	pstmt.setString(2, title);
    	
    	int insert = pstmt.executeUpdate();
    	
    	con.close();
    	pstmt.close();
    	
    	return insert;
    }
    
    public int deleteBook(int isbn) throws SQLException, ClassNotFoundException {
    	Class.forName("org.postgresql.Driver");
    	
    	Connection con = DriverManager.getConnection(url,login,password);
    	
    	String deleteStr = "DELETE FROM " + table + 
    						" WHERE isbn = ?";
    	
    	PreparedStatement pstmt = con.prepareStatement(deleteStr);
    	pstmt.setInt(1, isbn);
    	
    	int delete = pstmt.executeUpdate();
    	
    	con.close();
    	pstmt.close();
    	
    	return delete;
    }
    
    public Book findBook(int isbn) throws SQLException, ClassNotFoundException {
    	Class.forName(className);
    	Connection con = DriverManager.getConnection(url,login,password);
    	
    	String queryStr = "SELECT title " + 
    					  "FROM " + table + 
    					  " WHERE isbn = '" + isbn + "'" ;
    	
    	Statement stmt = con.createStatement();
    	ResultSet rs = stmt.executeQuery(queryStr);
    	
    	String title = null;
    	Book bookObj = null;
    	while(rs.next()) {
    		title = rs.getString("title");
    		bookObj = new Book();
    		bookObj.setIsbn(isbn);
    		bookObj.setTitle(title);
    	}
    	
    	con.close();
    	stmt.close();
    	rs.close();
    	
    	return bookObj;
    }
    
    public ArrayList<Book> getAllBooks() throws SQLException, ClassNotFoundException {
    	Class.forName(className);
    	Connection con = DriverManager.getConnection(url,login,password);
    	
    	String queryStr = "SELECT * FROM book";
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
