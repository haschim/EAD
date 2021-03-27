package book;

import java.sql.*;
import javax.servlet.jsp.jstl.sql.Result;

public class BookController {
	
	BookManager BM = new BookManager();
	
	public Result getAllBooks2() throws SQLException, ClassNotFoundException {
		return BM.getAllBooks2();
	}
}
