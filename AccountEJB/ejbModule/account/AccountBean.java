package account;

import javax.ejb.Stateful;

/**
 * Session Bean implementation class AccountBean
 */
@Stateful
public class AccountBean {

	private double amount = 0.0;
	private double balance = 0.0;

	public void setAmount(double amount) {
		this.amount = amount;
	}
	
	public double getAmount() {
		return this.amount;
	}
	
	public void setBalance(double balance) {
		this.balance = balance;
	}
	
    public double getBalance() {
    	return this.balance;
    }
    
    public void deposit(double amount) {
    	setAmount(amount); 
    	balance+=amount;
    }
    
    public void withdraw(double amount) {
    	setAmount(amount);
    	balance-=amount;
    }
    
}
