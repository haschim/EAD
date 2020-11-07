package pkg;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

/**
 * Session Bean implementation class StatelessCounter
 */
@Stateless
@LocalBean
public class StatelessCounter {

	private int count = 0;
    /**
     * Default constructor. 
     */
    public StatelessCounter() {
        // TODO Auto-generated constructor stub
    }
    
    public void incrementCount() {
    	count += 1;
    }

    public String getCount() {
    	return String.valueOf(count);
    }
    
}
