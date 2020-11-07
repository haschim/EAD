
public class Main {
	public static void main(String[] args) {
		
		AccountBean myAccount = new AccountBean(); // id ="myAccount" class="acc.AccountBean"
		
		myAccount.deposit(200.0);
		myAccount.deposit(-100.0);
		System.out.println("My acc bal: " + myAccount.displayBalance());
	}
}
