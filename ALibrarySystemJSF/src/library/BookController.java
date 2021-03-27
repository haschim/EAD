package library;

import java.sql.SQLException;
import java.util.ArrayList;

public class BookController {
	
	BookManager bookManagerObj = new BookManager();
	private Book bookObj = new Book();
	private ArrayList<Book> lstAllBooks = new ArrayList<Book>();
	private Search search = new Search();
	private ArrayList<Book> lstSearchResults = new ArrayList<Book>();

	//getters and setters
	public Book getBookObj() {
		return bookObj;
	}

	public void setBookObj(Book bookObj) {
		this.bookObj = bookObj;
	}

	public ArrayList<Book> getLstAllBooks() {
		return lstAllBooks;
	}

	public void setLstAllBooks(ArrayList<Book> lstAllBooks) {
		this.lstAllBooks = lstAllBooks;
	}
	
	public Search getSearch() {
		return search;
	}

	public void setSearch(Search search) {
		this.search = search;
	}
		
	public ArrayList<Book> getLstSearchResults() {
		return lstSearchResults;
	}

	public void setLstSearchResults(ArrayList<Book> lstSearchResults) {
		this.lstSearchResults = lstSearchResults;
	}

	// methods
	public ArrayList<Book> getAllBooks() throws SQLException, ClassNotFoundException {
		lstAllBooks = bookManagerObj.getAllBooks();
		return lstAllBooks;
	}
	
	public String searchBook() throws SQLException, ClassNotFoundException {
		lstSearchResults = bookManagerObj.searchBook(search);
		if(lstSearchResults.size() > 0)
			return "searchResults"; //redirect to searchResults.jsp
		else
			return null; //no results found - reload searchBook.jsp
	}
	
	public String createBook() throws SQLException, ClassNotFoundException {
		int insert = bookManagerObj.createBook(bookObj);
		
		if(insert != 0)
			return "displayAllBooks.jsp";
		else
			return null;
	}
	
	public String updateBook() throws SQLException, ClassNotFoundException {
		int update = bookManagerObj.updateBook(bookObj);
		
		if(update != 0)
			return "displayAllBooks.jsp";
		else
			return null;
	}
	
	public String deleteBook() throws SQLException, ClassNotFoundException {
		int delete = bookManagerObj.deleteBook(bookObj.getIsbn());
		
		if(delete != 0)
			return "displayAllBooks.jsp";
		else
			return null;
	}
}
