package pkg;

import java.sql.*;
import javax.ejb.Stateless;

@Stateless
public class LaptopManager {

	String url = "jdbc:postgresql://localhost/OS";
	String login = "guest";
	String pwd = "guest";
	
	public Laptop findLaptop(String model) throws ClassNotFoundException, SQLException {	
		Class.forName("org.postgresql.Driver");
		
		Connection con = DriverManager.getConnection(url,login,pwd);
		
		String query = "SELECT model, price, storage, ram, quantity FROM laptop where model = '" + model + "'";
		
		Statement stmt = con.createStatement();
		
		ResultSet rs = stmt.executeQuery(query);
		
		Laptop laptopObj = new Laptop();
		
		while(rs.next()) {
			laptopObj.setModel(rs.getString("model"));
			laptopObj.setPrice(rs.getDouble("price"));
			laptopObj.setStorage(rs.getInt("price"));
			laptopObj.setRam(rs.getInt("ram"));
			laptopObj.setQuantity(rs.getInt("quantity"));
		}
		
		con.close();
		stmt.close();
		rs.close();
		
		return laptopObj;
	}
}
