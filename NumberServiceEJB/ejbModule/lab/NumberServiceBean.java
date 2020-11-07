package lab;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

/**
 * Session Bean implementation class NumberServiceBean
 */
@Stateless
@LocalBean
public class NumberServiceBean {

    /**
     * Default constructor. 
     */
    public NumberServiceBean() {
        // TODO Auto-generated constructor stub
    }

    public double getNumber(double range) {
    	return Math.random() * range;
    }
}
