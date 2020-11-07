<%! public double calcBMI(double height, double weight){
		double bmi = weight/Math.pow(height,2);
		return bmi;
	}
	
	public String calcClassification(double bmi){
		String classification = "";
		
		if(bmi >= 30)
			classification ="Obese";
		else if(bmi >= 25)
			classification="Overweight";
		else if (bmi >= 18.5)
			classification="Normal";
		else
			classification="Undeweight";
		
		return classification;
	}
	
	%>
