package kh.java.polymorphism.animal;

public class Cat extends Animal{
	
	public void punch() {
		System.out.println("냥냥 펀치");
	}

	@Override
	public void attack() {
		punch();
	}
	
	
}
