package pkg;

import java.util.Arrays;

public class Dental {
	
	private String type;
	private String[] tasks;
	private double total;
	
	public void setType(String type) {
		this.type = type;
	}
	
	public String getType() {
		return type;
	}
	
	public void setTasks(String[] tasks) {
		this.tasks = tasks;
	}
	
	public String[] getTasks() {
		return tasks;
	}
	
	public void setTotal(double total) {
		this.total = total;
	}
	
	public double getTotal() {
		return total;
	}
	
	public String calculate() {
		total = 0.0;
		
		if(type.equals("reg")) {
			
			if(Arrays.toString(tasks).contains("cleaning"))
				total += 400.0;
			
			if(Arrays.toString(tasks).contains("cavityFilling"))
				total += 600.0;
			
			if(Arrays.toString(tasks).contains("xray"))
				total += 500.0;
			
		} else {
			
			if(Arrays.toString(tasks).contains("cleaning"))
				total += 500.0;
			
			if(Arrays.toString(tasks).contains("cavityFilling"))
				total += 700.0;
			
			if(Arrays.toString(tasks).contains("xray"))
				total += 600.0;
			
		}
		
		return "success";
	}
}
