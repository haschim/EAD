package pkg;

public class LoanMB {
	
	private double salary;
	private String experience;
	private double maxAmount;
	private double interestRate;

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public double getMaxAmount() {
		return maxAmount;
	}

	public void setMaxAmount(double maxAmount) {
		this.maxAmount = maxAmount;
	}

	public double getInterestRate() {
		return interestRate;
	}

	public void setInterestRate(double interestRate) {
		this.interestRate = interestRate;
	}
	
	public String calculate() {
		if(salary < 50000.0) {
			if(experience.equals("<10years")) {
				maxAmount = 600000.0;
				interestRate = 10.0;
			} else {
				maxAmount = 800000.0;
				interestRate = 9.0;
			}
		} else {
			if(experience.equals("<10years")) {
				maxAmount = 1000000.0;
				interestRate = 8.0;
			} else {
				maxAmount = 1200000.0;
				interestRate = 7.0;
			}
		}
		
		return "success";
	}
	
}
