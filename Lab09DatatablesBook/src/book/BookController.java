package book;

import java.sql.*;
import java.util.*;

public class BookController {
	
	BookManager bookManagerObj = new BookManager();
	
	public ArrayList<Book> getAllBooks1() throws SQLException, ClassNotFoundException {
		return bookManagerObj.getAllBooks1();
	}
}
