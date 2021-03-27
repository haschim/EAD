package hello;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

@Stateless
@LocalBean
public class HelloWorld {

    public HelloWorld() {
    }

    public String sayHello(String name) {
    	return "Hello " + name + "! Congratulations on your first EJB example.";
    }
}
