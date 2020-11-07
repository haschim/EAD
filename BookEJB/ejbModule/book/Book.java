package book;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Book {
	
	private int isbn;
	private String title;
	
	public Book() {}
	
	@Id
	public int getIsbn() { 
		return isbn; 
	}
	
	public void setIsbn(int isbn){ 
		this.isbn = isbn; 
	}
	
	public String getTitle(){ 
		return title; 
	}
	
	public void setTitle(String title){
		this.title = title; 
	}
}
