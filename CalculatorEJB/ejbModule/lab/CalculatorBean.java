package lab;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

/**
 * Session Bean implementation class CalculatorBean
 */
@Stateless
@LocalBean
public class CalculatorBean {

    /**
     * Default constructor. 
     */
    public CalculatorBean() {
        // TODO Auto-generated constructor stub
    }

    public double add(double num1, double num2) {
    	return num1+num2;
    }
    
    public double subtract(double num1, double num2) {
    	return num1-num2;
    }
    
    public double multiply(double num1, double num2) {
    	return num1*num2;
    }
    
    public double divide(double num1, double num2) {
    	return num1/num2;
    }
}
