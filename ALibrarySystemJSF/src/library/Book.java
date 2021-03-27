package library;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Book {
	private String isbn;
	private String title;
	private String author;
	private String publisher;
	private int year;
	private String format;
	private boolean isborrowed;

	@Id
	public String getIsbn() {
		return this.isbn;
	}
	
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getTitle() {
		return this.title;
	}
	
	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getFormat() {
		return format;
	}

	public void setFormat(String format) {
		this.format = format;
	}

	public boolean getIsborrowed() {
		return isborrowed;
	}

	public void setIsborrowed(boolean isborrowed) {
		this.isborrowed = isborrowed;
	}
}
