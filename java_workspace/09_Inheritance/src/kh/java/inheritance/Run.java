package kh.java.inheritance;

public class Run {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Child1 ch1 = new Child1();
		ch1.name ="홍길동";
		ch1.age =23;
		ch1.printInfo();
		ch1.say();
		ch1.game();
		System.out.println("===================\n");
		
		Child2 ch2 = new Child2();
		ch2.name ="마이클";
		ch2.age =33;
		ch2.printInfo();
		ch2.say();
		System.out.println("===================\n");
		
		GrandChild g = new GrandChild();
		g.name = "둘리";
		g.age = 20;
		g.say();
		g.printInfo();
	}

}
