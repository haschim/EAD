package book;


import java.sql.SQLException;


import javax.servlet.jsp.jstl.sql.*;


public class BookController {
	
	BookManager BM = new BookManager();
	
	public Result getAllBooks2() throws SQLException, ClassNotFoundException{
		return BM.getAllBooks2();
	}
	

	
}
