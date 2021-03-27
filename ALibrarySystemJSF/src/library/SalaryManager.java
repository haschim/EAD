package library;

public class SalaryManager {
	//static class
	public static class Salary {
		private String allowanceLabel;
		private double allowanceValue;
		
		//ctor
		public Salary(String allowanceLabel, double allowanceValue) {
			this.allowanceLabel = allowanceLabel;
			this.allowanceValue = allowanceValue;
		}
		
		public String getAllowanceLabel() {
			return allowanceLabel;
		}
		public void setAllowanceLabel(String allowanceLabel) {
			this.allowanceLabel = allowanceLabel;
		}
		public double getAllowanceValue() {
			return allowanceValue;
		}
		public void setAllowanceValue(double allowanceValue) {
			this.allowanceValue = allowanceValue;
		}	
	}
	
	// for displaying in listbox
	public Salary[] salaryList;
	public Salary[] getSalaryAllowanceValue() {
		salaryList = new Salary[4];
		salaryList[0] = new Salary("Transport", 50.50);
		salaryList[1] = new Salary("Refreshment", 50.50);
		salaryList[2] = new Salary("Entertainment", 50.50);
		salaryList[3] = new Salary("Rent", 50.50);
		
		return salaryList;
	}
	
	// user selection
	public String[] salaryAllowance;
	
	public String[] getSalaryAllowance() {
		return salaryAllowance;
	}

	public void setSalaryAllowance(String[] salaryAllowance) {
		this.salaryAllowance = salaryAllowance;
	}
	
	private double total;
	
	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	private double basicSalary;
	private int hrs;
	private double rate;
	
	public double getBasicSalary() {
		return basicSalary;
	}

	public void setBasicSalary(double basicSalary) {
		this.basicSalary = basicSalary;
	}
	public int getHrs() {
		return hrs;
	}

	public void setHrs(int hrs) {
		this.hrs = hrs;
	}

	public double getRate() {
		return rate;
	}

	public void setRate(double rate) {
		this.rate = rate;
	}

	// convert String to double
	public String calculate() {
		total = 0.0;
		for(int i = 0; i<salaryAllowance.length;i++) {
			total += Double.parseDouble(salaryAllowance[i]);
		}

		total += (basicSalary + (rate * hrs));
		return "success";
	}

	public String clear() {
		setBasicSalary(0.0);
		setRate(0);
		setHrs(0);
		setTotal(0);
		return "clean";
	}
}
