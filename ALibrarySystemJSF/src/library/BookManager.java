package library;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class BookManager {
	//no-args ctor
    public BookManager() {}

    String url = "jdbc:postgresql://localhost/library";
    String login = "postgres";
    String password = "1234";
    
    public int createBook(Book bookObj) throws SQLException, ClassNotFoundException {
    	Class.forName("org.postgresql.Driver");
    	Connection con = DriverManager.getConnection(url,login,password);
    	
    	String queryStr = "INSERT INTO book VALUES(?, ?, ?, ?, ?, ?, ?)";
    	PreparedStatement pstmt = con.prepareStatement(queryStr);
    	pstmt.setString(1, bookObj.getIsbn());
    	pstmt.setString(2, bookObj.getTitle());
    	pstmt.setString(3, bookObj.getAuthor());
    	pstmt.setString(4, bookObj.getPublisher());
    	pstmt.setInt(5, bookObj.getYear());
    	pstmt.setString(6, bookObj.getFormat());
    	pstmt.setBoolean(7, bookObj.getIsborrowed());
    	
    	int insert = pstmt.executeUpdate();
    	
    	con.close();
    	pstmt.close();
    	
    	return insert;
    }

    public ArrayList<Book> getAllBooks() throws SQLException, ClassNotFoundException {
    	Class.forName("org.postgresql.Driver");
    	Connection con = DriverManager.getConnection(url,login,password);
    	
    	String queryStr = "SELECT isbn, title, author, publisher, year, format, isborrowed FROM book";
    	Statement stmt = con.createStatement();
    	ResultSet rs = stmt.executeQuery(queryStr);
    	ArrayList<Book> lstBooks = new ArrayList<Book>();
    	
    	while(rs.next()) {
    		String isbn = rs.getString("isbn");
    		String title = rs.getString("title");
    		String author = rs.getString("author");
    		String publisher = rs.getString("publisher");
    		int year = rs.getInt("year");
    		String format = rs.getString("format");
    		boolean isborrowed = rs.getBoolean("isborrowed");
    		
    		Book newBook = new Book();
    		newBook.setIsbn(isbn);
    		newBook.setTitle(title);
    		newBook.setAuthor(author);
    		newBook.setPublisher(publisher);
    		newBook.setYear(year);
    		newBook.setFormat(format);
    		newBook.setIsborrowed(isborrowed);
    		lstBooks.add(newBook);
    	}
    	
    	con.close();
    	stmt.close();
    	rs.close();
    	
    	return lstBooks;
    }
    
    public ArrayList<Book> searchBook(Search searchObj) throws SQLException, ClassNotFoundException {
    	Class.forName("org.postgresql.Driver");
    	Connection con = DriverManager.getConnection(url,login,password);
    	
    	String keywords = searchObj.getKeywords();
    	
    	int tryParseYear = 0;    	
    	try {
    		tryParseYear = Integer.parseInt(keywords);
    	} catch(Exception e) {
    		tryParseYear = 0;
    	}
    	
    	String queryStr = "SELECT isbn, title, author, publisher, year, format, isborrowed "
    					  + "FROM book "
    					  + "WHERE isbn iLIKE ? OR "
    					  + "title iLIKE ? OR "
    					  + "author iLIKE ? OR "
    					  + "publisher iLIKE ? OR "
    					  + "year = ? OR "
    					  + "format = ? ";
    	
    	PreparedStatement pstmt = con.prepareStatement(queryStr);    	
    	pstmt.setString(1, "%" + keywords + "%");
    	pstmt.setString(2, "%" + keywords + "%");
    	pstmt.setString(3, "%" + keywords + "%");
    	pstmt.setString(4, "%" + keywords + "%");
    	pstmt.setInt(5, tryParseYear);
    	pstmt.setString(6, keywords);
    	
    	ResultSet rs = pstmt.executeQuery();
    	ArrayList<Book> lstBooks = new ArrayList<Book>();
    	
    	while(rs.next()) {
    		String isbn = rs.getString("isbn");
    		String title = rs.getString("title");
    		String author = rs.getString("author");
    		String publisher = rs.getString("publisher");
    		int year = rs.getInt("year");
    		String format = rs.getString("format");
    		boolean isborrowed = rs.getBoolean("isborrowed");
    		
    		Book newBook = new Book();
    		newBook.setIsbn(isbn);
    		newBook.setTitle(title);
    		newBook.setAuthor(author);
    		newBook.setPublisher(publisher);
    		newBook.setYear(year);
    		newBook.setFormat(format);
    		newBook.setIsborrowed(isborrowed);
    		lstBooks.add(newBook);
    	}
    	
    	con.close();
    	pstmt.close();
    	rs.close();
    	    	
    	return lstBooks;
    }
    
    public int updateBook(Book bookObj) throws SQLException, ClassNotFoundException {
    	Class.forName("org.postgresql.Driver");
    	Connection con = DriverManager.getConnection(url,login,password);
    	
    	String queryStr = "UPDATE book "
    					  + "SET isbn = ?, title = ?, author = ?, publisher = ?, year = ?, format = ?, isborrowed = ? "
    					 +	"WHERE isbn = ?";
    	PreparedStatement pstmt = con.prepareStatement(queryStr);
    	pstmt.setString(1, bookObj.getIsbn());
    	pstmt.setString(2, bookObj.getTitle());
    	pstmt.setString(3, bookObj.getAuthor());
    	pstmt.setString(4, bookObj.getPublisher());
    	pstmt.setInt(5, bookObj.getYear());
    	pstmt.setString(6, bookObj.getFormat());
    	pstmt.setBoolean(7, bookObj.getIsborrowed());
    	pstmt.setString(8, bookObj.getIsbn());
    	
    	int update = pstmt.executeUpdate();
    	
    	con.close();
    	pstmt.close();
    	
    	return update;
    }
    
    public int deleteBook(String isbn) throws SQLException, ClassNotFoundException {
    	Class.forName("org.postgresql.Driver");
    	Connection con = DriverManager.getConnection(url, login, password);
    	
    	String queryStr = "DELETE FROM book WHERE isbn = ?";
    	PreparedStatement pstmt = con.prepareStatement(queryStr);
    	pstmt.setString(1, isbn);
    	int delete = pstmt.executeUpdate();
    	
    	con.close();
    	pstmt.close();
    	
    	return delete;
    }
}
