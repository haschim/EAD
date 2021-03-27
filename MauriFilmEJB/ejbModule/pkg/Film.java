//question 2 part (i)
package pkg;

import javax.persistence.*;

@Entity
public class Film {
	
	private int id;
	private String title;
	private String starCast;
	private int rate;
	
	@Id
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStarCast() {
		return starCast;
	}

	public void setStarCast(String starCast) {
		this.starCast = starCast;
	}

	public int getRate() {
		return rate;
	}

	public void setRate(int rate) {
		this.rate = rate;
	}
}
