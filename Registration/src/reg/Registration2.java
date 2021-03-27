package reg;

public class Registration2 {
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
	
}
