package cart;

import java.util.ArrayList;

import javax.ejb.LocalBean;
import javax.ejb.Stateful;

/**
 * Session Bean implementation class cartBean
 */
@Stateful
@LocalBean // bean has no-interface view
public class CartBean {

	public CartBean() {	
	}
	
	private ArrayList<String> items = new ArrayList<String>(); 
	
	public void addItem(String item) {
		items.add(item);
	}
	
	public void removeItem(String item) {
		items.remove(item);
	}
	
	public ArrayList<String> getAllItems() {
		return items;
	}
}
