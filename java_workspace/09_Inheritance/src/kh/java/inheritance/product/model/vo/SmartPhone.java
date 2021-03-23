package kh.java.inheritance.product.model.vo;

public class SmartPhone extends Product{
	private String os;
	private String carrier;
	
	public SmartPhone(String brand,String productName, int price,
			String os, String carrier) {
		super(brand,productName,price);
		this.os = os;
		this.carrier = carrier;
	}

}
