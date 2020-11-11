package hospital;

import javax.persistence.*;

@Entity
public class Consultation {
	
	public Consultation() {}
	
	private int conId;
	private int docId;
	private int patId;
	private String conComments;
	
	@Id
	public int getConId() {
		return conId;
	}
	public void setConId(int conId) {
		this.conId = conId;
	}
	public int getDocId() {
		return docId;
	}
	public void setDocId(int docId) {
		this.docId = docId;
	}
	public int getPatId() {
		return patId;
	}
	public void setPatId(int patId) {
		this.patId = patId;
	}
	public String getConComments() {
		return conComments;
	}
	public void setConComments(String conComments) {
		this.conComments = conComments;
	}
}
