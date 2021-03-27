package lab;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

@Stateless
@LocalBean
public class CalculatorBean {

    public CalculatorBean() {
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
