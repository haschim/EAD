package hospital;

import javax.persistence.*;

@Entity
public class Patient {
	public Patient() {}
	
	private int patId;
	private String patName;
	
	@Id
	public int getPatId() {
		return patId;
	}
	public void setPatId(int patId) {
		this.patId = patId;
	}
	public String getPatName() {
		return patName;
	}
	public void setPatName(String patName) {
		this.patName = patName;
	}
}
