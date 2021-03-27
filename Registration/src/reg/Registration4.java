package reg;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.ValidatorException;

public class Registration4 {
	private String nic;
	private String name;
	private int numericAge;
	private int numericTelephone;
	
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
	
	public int getNumericAge() {
		return numericAge;
	}
	public void setNumericAge(int numericAge) {
		this.numericAge = numericAge;
	}
	
	public int getNumericTelephone() {
		return numericTelephone;
	}
	public void setNumericTelephone(int numericTelephone) {
		this.numericTelephone = numericTelephone;
	}
	
	public String register() {
		return "success";
	}
	
	public void validateAge(FacesContext context, UIComponent componentValidate, Object value)
	throws ValidatorException {
		int age = ((Integer) value).intValue();
		if((age < 18) || (age >= 40)){
			FacesMessage message = new FacesMessage("Age must be between 18 and 40");
			throw new ValidatorException(message);
		}
	}
	
	public void validateTel(FacesContext context, UIComponent componentToValidate, Object value)
	throws ValidatorException {
		int tel = ((Integer)value).intValue();
		if((tel< 1000000) || (tel > 9999999)) {
			FacesMessage message = new FacesMessage("Telephone number is not valid");
			throw new ValidatorException(message);
		}
	}
}
