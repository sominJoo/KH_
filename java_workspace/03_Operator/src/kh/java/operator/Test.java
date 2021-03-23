package kh.java.operator;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Test t = new Test();
		t.test1();
	}
	public void test1() {
		int a = 20;
		int b = a--;
		int c = 40;
		
		System.out.println("a = "+ a);
		System.out.println(c + a++ == 59 ? "딸기" : "바나나");
		System.out.println(c /= b); //2
		
	}
	public void test2() {
		int a = 10;
		int b = a++;
		boolean bool = a>5 && b-- == a;
		System.out.println("bool = " + bool);
		System.out.println("result1 = "+ (a+b++));
		int c = 20;
		int d = c++ + c + b;
		System.out.println("result2 = "+c+", "+d);
	}

}
