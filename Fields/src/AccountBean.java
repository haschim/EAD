
public class AccountBean {
	
	private double balance = 0.0;
	
	public void deposit(double balance) {
		if(balance > 0.0) {
			this.balance += balance;
		}
	}	

	public double displayBalance() {
		return balance;
	}
	
	
}
