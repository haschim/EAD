package pkg;

public class CalculatorMB { //AKA controller

	// input fields from JSP
	private double num1;
	private double num2;
	private String operation; //single radio
	private double result; 	// output field to display to JSP
	
	// getters and setters
	public void setNum1(double num1) {
		this.num1=num1;
	}
	
	public double getNum1() {
		return this.num1;
	}
	
	public void setNum2(double num2) {
		this.num2=num2;
	}
	
	public double getNum2() {
		return this.num2;
	}
	
	public void setResult(double result) {
		this.result = result;
	}
	
	public double getResult() {
		return this.result;
	}
	
	public String getOperation() {
		return this.operation;
	}
	
	public void setOperation(String operation) {
		this.operation = operation;
	}

	// calculate result
	public String calculate() {
		// initialize new object/instance
		CalculatorEJB calculatorEJB = new CalculatorEJB();

		// route to appropriate method call
		if(operation.equals("add"))
			result = calculatorEJB.add(num1, num2);
		else if(operation.equals("sub"))
			result = calculatorEJB.sub(num1, num2);
		else if(operation.equals("mul"))
			result = calculatorEJB.mul(num1, num2);
		else
			result = calculatorEJB.div(num1, num2);
		
		return "success";
	}
}
