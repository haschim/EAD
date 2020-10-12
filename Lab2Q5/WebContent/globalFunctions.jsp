<%! 
	public double calcBMI(double height, double weight){
		double BMI = weight/Math.pow(height,2); 	
		return BMI;			
	}		

	public String calcClassification(double BMI){
		String classification=null;
		
		if(BMI>=30)
			classification="Obese";
		else if(BMI>=25)
			classification="Overweight";
		else if(BMI>=18.5)
			classification="Normal";
		else
			classification="Underweight";
		
		return classification;
	}	
%>