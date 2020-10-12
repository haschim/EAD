<%! 
	public String grade(double mark){
		String grade = null;
		
		if(mark>=80)
			grade="A+";
		else if(mark>=70)
			grade="A";
		else if(mark>=60)
			grade="B";
		else if(mark>=50)
			grade="C";
		else if(mark >=40)
			grade="D";
		else
			grade="F";
		
		return grade;
	}
%>