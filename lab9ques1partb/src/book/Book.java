package book;


import javax.persistence.Entity;

@Entity
public class Book {
	private Integer isbn;
	private String title;
	
	public Book(int isbn,String title) {
		this.isbn = isbn;
		this.title = title;
		
	}

	public Integer getIsbn() {
		return isbn;
	}

	public void setIsbn(Integer isbn) {
		this.isbn = isbn;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	

	
	
}
