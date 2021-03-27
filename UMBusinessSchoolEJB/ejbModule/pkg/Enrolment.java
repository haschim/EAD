package pkg;

import javax.ejb.Stateless;

@Stateless
public class Enrolment {

    public Enrolment() {
    }

    private int gradeToMark(String grade) {
    	int mark = 0;
    	
    	if(grade.equals("A"))
    		mark = 10;
    	else if(grade.equals("B"))
    		mark = 8;
    	else if(grade.equals("C"))
    		mark = 6;
    	else if(grade.equals("D"))
    		mark = 4;
    	
    	return mark;
    }
    
    public int totalMarks(String grade1, String grade2) {
    	int mark1 = gradeToMark(grade1);
    	int mark2 = gradeToMark(grade2);
    	
    	int totalMarks = mark1  + mark2;
    	
    	return totalMarks;
    }
    
    public boolean checkQualifications(int total, String programme) {
    	boolean isEligible = false;
    	
    	if(total >= 6 && programme.equals("diploma"))
    		isEligible = true;
    	else if(total >= 12 && programme.equals("degree"))
    		isEligible = true;
    	
    	return isEligible;
    }
}
