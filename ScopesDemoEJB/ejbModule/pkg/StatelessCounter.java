package pkg;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

@Stateless
@LocalBean
public class StatelessCounter {

	private int count = 0;

    public StatelessCounter() {
    }
    
    public void incrementCount() {
    	count += 1;
    }

    public String getCount() {
    	return String.valueOf(count);
    }
    
}
