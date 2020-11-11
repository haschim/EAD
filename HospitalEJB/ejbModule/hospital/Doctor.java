package hospital;

import javax.persistence.*;

@Entity
public class Doctor {
	public Doctor() {}
	
	private int docId;
	private String docName;
	private String docSpeciality;
	
	public void setDocId(int docId) {
		this.docId = docId;
	}
	
	public void setDocName(String docName) {
		this.docName = docName;
	}
	
	public void setDocSpeciality(String docSpeciality) {
		this.docSpeciality = docSpeciality;
	}
	
	@Id
	public int getDocId() {
		return this.docId;
	}
	
	public String getDocName() {
		return this.docName;
	}
	
	public String getDocSpeciality() {
		return this.docSpeciality;
	}
}
