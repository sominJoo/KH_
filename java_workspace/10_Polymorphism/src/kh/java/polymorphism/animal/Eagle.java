package kh.java.polymorphism.animal;

public class Eagle extends Animal implements Flyable{

	
	@Override
	public void say() {
		// TODO Auto-generated method stub
		System.out.println("짹");
	}

	@Override
	public void attack() {
		System.out.println("슈욱");
	}

	@Override
	public void fly() {
		// TODO Auto-generated method stub
		System.out.println("피융");
	}
	
}
