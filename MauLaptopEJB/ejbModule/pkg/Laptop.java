package pkg;

import javax.persistence.*;

@Entity
public class Laptop {
	
	private String model;
	private double price;
	private int storage;
	private int ram;
	private int quantity;
	
	@Id
	public String getModel() {
		return model;
	}
	
	public void setModel(String model) {
		this.model = model;
	}
	
	public double getPrice() {
		return price;
	}
	
	public void setPrice(double price) {
		this.price = price;
	}
	
	public int getStorage() {
		return storage;
	}
	
	public void setStorage(int storage) {
		this.storage = storage;
	}
	
	public int getRam() {
		return ram;
	}
	
	public void setRam(int ram) {
		this.ram = ram;
	}
	
	public int getQuantity() {
		return quantity;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}
