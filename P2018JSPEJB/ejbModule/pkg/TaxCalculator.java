package pkg;

import javax.ejb.Stateless;

@Stateless
public class TaxCalculator {
	//no-arguments constructor
    public TaxCalculator() {
    }

    // returns int primitive type - threshold
    // calculate threshold based on category
    // takes category as parameter of type String
    public int calculateThreshold(String category) {
    	int threshold = 0;
    	
    	if(category.equals("A"))
    		threshold = 300000;
    	else if(category.equals("B"))
    		threshold = 410000;
    	else if(category.equals("C"))
    		threshold = 475000;
    	else
    		threshold = 520000;
    	
    	return threshold;
    }
    
    // method returns double primitive type - tax
    //tax formula = (0.15 * ((13*monthly salary)-threshold))/12
    // to calculate tax we need threshold and salary which will be pass as arguments on method call
    // the salary parameter is the monthly salary as seen in the question
    public double calculateTax(int threshold, double salary) {
    	double tax = 0.0;
    	
    	tax = (0.15 * ((13*salary)-threshold))/12;
    	
    	return tax;
    }
}
