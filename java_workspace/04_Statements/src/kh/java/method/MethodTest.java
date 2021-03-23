package kh.java.method;

import java.util.Scanner;

public class MethodTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MethodTest m = new MethodTest();
		//m.test();
		m.test2();
	}
	public void test() {
		String name = "홍길동";
		int age = 30;
		//2.데이터 출력부
		//this = 현제객체를 가리키는 참조변수
		this.printInfo(age,name);
		printInfo(50,"신사임당");
		printInfo(60,"세종대왕");		
	}
	
	public void printInfo(int age, String name) {
		System.out.println("안녕하세요 나이는 "+age +"살, 이름은 "+name +"입니다.");
	}
	
	
	private void test2() {
		// TODO Auto-generated method stub		
		int num1 = inputInt();
		int num2 = inputInt();
		
		System.out.println(num1 + " + "+num2 + " = "+(num1 + num2));
	}
	
	
	public int inputInt() {
		Scanner sc = new Scanner(System.in);
		System.out.print("정수 입력 : ");
		int num = sc.nextInt();
		return num;
	}
}
