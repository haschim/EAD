package pkg;

import javax.ejb.Stateless;

@Stateless
public class AppreciationCalculator {

    public AppreciationCalculator() {
    }

    public double Rate(String location) {
    	double rate = 0.0;
    	
    	if(location.equals("urban"))
    		rate = 10.0;
    	else if(location.equals("rural"))
    		rate = 5.0;
    	
    	return rate;
    }
    
    public double ActualValue(double initialValue, double rate, int years) {
    	double actualValue = Math.round(Math.pow( (1 + (rate/100) ) , years) * initialValue);
    	
    	return actualValue;
    }
}
