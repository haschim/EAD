package lab;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

@Stateless
@LocalBean
public class NumberServiceBean {

    public NumberServiceBean() {
    }

    public double getNumber(double range) {
    	return Math.random() * range;
    }
}
