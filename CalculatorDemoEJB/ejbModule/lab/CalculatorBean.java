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
    
    // this method is going to add to double (return type double)
    
    // <access-modifier> <return-type> <method-name>(<parameter-lists>){
    	//method implementation or body
	// } 
   
    public double add(double num1, double num2) {
    	return num1 + num2;
    }
   
    //same for other operation such as subtraction, multiplication and division
    public double subtract(double num1, double num2) {
    	return num1 - num2;
    }
    
    public double multiply(double num1, double num2) {
    	return num1 * num2;
    }
    
    public double divide(double num1, double num2)  {
    	return num1 / num2;
    }    
   
}
