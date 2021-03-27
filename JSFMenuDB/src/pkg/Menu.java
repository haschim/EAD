package pkg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedHashMap;

public class Menu {
	
	// Part 1 - Retrieve value from Database tables and 
	// Store it in respective LinkedHaspMaps
	
	private LinkedHashMap<String, Double> starters;
	private LinkedHashMap<String, Double> meals;
	
    String[] starter;
    String[] meal;

	public String[] getStarter() {
		return starter;
	}

	public void setStarter(String[] starter) {
		this.starter = starter;
	}
	
	public String[] getMeal() {
		return meal;
	}

	public void setMeal(String[] meal) {
		this.meal = meal;
	}

    String url = "jdbc:postgresql://localhost/catering";
    String className = "org.postgresql.Driver"; //Class.forName(String) -> parameter
    String login = "postgres";
    String password = "1234";

    // starter
	public LinkedHashMap<String, Double> getStartersValues() 
			throws SQLException, ClassNotFoundException {
    	
		Class.forName(className);
    	Connection con = DriverManager.getConnection(url,login,password);
    	
    	String queryStr = "SELECT * FROM starter";
    	Statement stmt = con.createStatement();
    	ResultSet rs = stmt.executeQuery(queryStr); 	

    	starters = new LinkedHashMap<String, Double>();
    	
    	while(rs.next()) {    		
    		rs.getInt("id"); // dummy - we do not need id
    		String name = rs.getString("name");
    		double price = rs.getDouble("price");	
    		
    		starters.put(name, Double.valueOf(price));
    	}
    
    	con.close();
    	stmt.close();
    	rs.close();
    	
    	return starters;
	}
	
	// meal
	public LinkedHashMap<String, Double> getMealsValues() 
			throws SQLException, ClassNotFoundException {
    	
		Class.forName(className);
    	Connection con = DriverManager.getConnection(url,login,password);
    	
    	String queryStr = "SELECT * FROM meal";
    	Statement stmt = con.createStatement();
    	ResultSet rs = stmt.executeQuery(queryStr); 	

    	meals = new LinkedHashMap<String, Double>();
    	
    	while(rs.next()) {    		
    		rs.getInt("id"); // dummy - we do not need id
    		String name = rs.getString("name");
    		double price = rs.getDouble("price");	
    		
    		meals.put(name, Double.valueOf(price));
    	}
    
    	con.close();
    	stmt.close();
    	rs.close();
    	
    	return meals;
	}

	// Part 2 - calculate total 
	double total;
	
	public double getTotal() {
		return total;
	}
	
	public void setTotal(double total) {
		this.total = total;
	}
	
	public String calculate() {
		total = 0.0;
		
		// loop through arrays
		
		for(int i=0; i<starter.length;i++)
			total += Double.valueOf(starter[i]); 
		
		for(int i=0; i<meal.length;i++)
			total += Double.valueOf(meal[i]);
		
		return "success";
	}
}
