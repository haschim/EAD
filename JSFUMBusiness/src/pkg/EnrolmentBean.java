package pkg;

public class EnrolmentBean {

	// ctor no-args
	public EnrolmentBean() {
	}
	
	private String grade1;
	private String grade2;
	private String programme;
	private int totalMarks;
	private boolean eligible;
	
	public String getGrade1() {
		return grade1;
	}
	public void setGrade1(String grade1) {
		this.grade1 = grade1;
	}
	public String getGrade2() {
		return grade2;
	}
	public void setGrade2(String grade2) {
		this.grade2 = grade2;
	}
	public String getProgramme() {
		return programme;
	}
	public void setProgramme(String programme) {
		this.programme = programme;
	}
	public int getTotalMarks() {
		return totalMarks;
	}
	public void setTotalMarks(int totalMarks) {
		this.totalMarks = totalMarks;
	}
	public boolean isEligible() {
		return eligible;
	}
	public void setEligible(boolean eligible) {
		this.eligible = eligible;
	}
	
	private int GradeToMark(String grade) {
		int mark = 0;
		
		if(grade.equals("A"))
			mark = 10;
		else if(grade.equals("B"))
			mark = 8;
		else if(grade.equals("C"))
			mark = 6;
		else if(grade.equals("D"))
			mark = 4;
		else 
			mark = 0;
		
		return mark;
	}
	
	private int TotalMarks(String grade1, String grade2) {
		int mark1 = GradeToMark(grade1);
		int mark2 = GradeToMark(grade2);
		
		totalMarks = mark1 + mark2;
		
		return totalMarks;
	}
	
	public String CheckQualification() {
		eligible = false;
		
		totalMarks = TotalMarks(grade1,grade2);
		
		if( (programme.equals("diploma") && (totalMarks >= 6)) || (programme.equals("degree") && (totalMarks >= 12)) ){
			eligible = true;
		}
		
		return "success";
	}
}
