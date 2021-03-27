package book;

import java.util.ArrayList;
import java.util.Arrays;

public class BookController {
	
	ArrayList<Book> allBooks = new ArrayList<Book>(
			Arrays.asList(new Book(1, "Java"),
						  new Book(2, "Visual"),
						  new Book(3, "Python"),
						  new Book(4, "C++"),
						  new Book(5, "Basic"))
			);

	public ArrayList<Book> getAllBooks(){
		return allBooks;
	}
	
	public void setAllBooks(ArrayList<Book> allBooks) {
		this.allBooks = allBooks;
	}
	
	private int isbn;
	private String title;
	
	public int getIsbn() {
		return isbn;
	}

	public void setIsbn(int isbn) {
		this.isbn = isbn;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	public String addBook() {
		allBooks.add(new Book(isbn, title));
		return "add";
	}
	
	public String delBook(Book del) {
		allBooks.remove(del);
		return "del";
	}
}
