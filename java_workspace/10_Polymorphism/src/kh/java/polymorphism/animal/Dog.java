package kh.java.polymorphism.animal;

public class Dog extends Animal implements Runnable,Bitable{

	public void kick() {
		System.out.println("멍멍 펀치");
	}

	@Override
	public void attack() {
		kick();
	}

	@Override
	public void run() {
		// TODO Auto-generated method stub
		System.out.println("dog run");
	}

	@Override
	public void bite(String sound) {
		// TODO Auto-generated method stub
		System.out.println("dog bite " + sound);
	}
}
