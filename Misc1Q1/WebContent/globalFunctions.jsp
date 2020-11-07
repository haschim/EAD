<%-- globalFunctions.jsp --%>
<%!

    public double calcDiv(double num1, double num2) throws ArithmeticException{
		double d = 0.0;	
		
		if(num2 == 0.0)
			throw new ArithmeticException();
		else
			d = num1/num2;
		
		return d;	
	}
%>