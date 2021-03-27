package reg;

import java.util.*;

public class Registration1 {
	private String nic;
	private String name;
	private String age;
	private int numericAge = 0;
	private String telephone;
	private int numericTelephone = 0;
	private ArrayList<String> errorMessages;
	
	public String getNic() {
		return nic;
	}
	
	public void setNic(String nic) {
		this.nic = nic;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getAge() {
		return age;
	}
	
	public void setAge(String age) {
		this.age = age;
		try {
			this.numericAge = Integer.parseInt(age);
		} catch(NumberFormatException nfe) {}
	}
	
	public int getNumericAge() {
		return numericAge;
	}
	
	public String getTelephone() {
		return telephone;
	}
	
	public void setTelephone(String telephone) {
		this.telephone = telephone;
		try {
			this.numericTelephone = Integer.parseInt(telephone);
		} catch(NumberFormatException nfe) {}
	}
	
	public int getNumericTelephone() {
		return numericTelephone;
	}
	
	public String register() {
		errorMessages = new ArrayList<String>();
		if(nic.equals(""))
			errorMessages.add("NIC required");
		
		if(name.equals(""))
			errorMessages.add("Name required");
		
		if((numericAge < 18) || (numericAge > 40))
			errorMessages.add("Age must be between 18 and 40.");
		
		if((numericTelephone < 1000000) || (numericTelephone > 9999999))
			errorMessages.add("Telephone number is not valid.");
		
		if(errorMessages.size() > 0)
			return null;
		else
			return "thanks?faces-redirect=true";
	}
	
	public String getErrorMessages() {
		String messageList;
		if((errorMessages == null) || (errorMessages.size() == 0))
			messageList = "";
		else {
			messageList = "<FONT COLOR=RED><B><UL>";
			for (int i = 0; i < errorMessages.size(); i++) {
				messageList = messageList + "<LI>" + errorMessages.get(i) + "\n";
			}
			
			messageList = messageList + "</UL></B></FONT>";
		}
		return messageList;
	}
	
}
