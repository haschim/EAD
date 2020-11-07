package hello;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

/**
 * Session Bean implementation class HelloWorld
 */
@Stateless
@LocalBean
public class HelloWorld {

    /**
     * Default constructor. 
     */
    public HelloWorld() {
        // TODO Auto-generated constructor stub
    }

    public String sayHello(String name) {
    	return "Hello " + name + "! Congratulations on your first EJB example2.";
    }
}
