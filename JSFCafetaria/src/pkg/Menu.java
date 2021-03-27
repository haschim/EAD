package pkg;

public class Menu {
	
	private double[] starter;
	private double[] meal;
	private double total;
	
	public void setStarter(double[] starter) {
		this.starter = starter;
	}
	
	public double[] getStarter() {
		return starter;
	}
	
	public void setMeal(double[] meal) {
		this.meal = meal;
	}
	
	public double[] getMeal() {
		return meal;
	}
	
	public void setTotal(double total) {
		this.total = total;
	}
	
	public double getTotal() {
		return total;
	}
	
	public String calculate() {
		total = 0.0;
		
		for(int i = 0; i < starter.length; i++)
			total += starter[i];
		
		for(int i = 0; i < meal.length; i++)
			total += meal[i];
		
		return "success";
	}
}
