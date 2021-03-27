package pkg;

public class DepreciateManagedBean {
	
	// private fields
	private double originalPrice;
	private String origin;
	private int age;
	private double finalValue;
	
	
	// expose fields using getters & setters

	public double getOriginalPrice() {
		return originalPrice;
	}

	public void setOriginalPrice(double originalPrice) {
		this.originalPrice = originalPrice;
	}

	public String getOrigin() {
		return origin;
	}

	
	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public double getFinalValue() {
		return finalValue;
	}

	public void setFinalValue(double finalValue) {
		this.finalValue = finalValue;
	}
	
	// findValueCalculator
	public String FinalValueCalculator() {
		double rate = 0.0;
		
		if(origin.equals("japan"))
			rate = 10.0;
		else if(origin.equals("europe"))
			rate = 15.0;
		else 
			rate = 20.0;
		
		finalValue = Math.pow( (1 - (rate/100)) , age) * originalPrice;
		
		return "success";
	}
}
