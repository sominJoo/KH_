package kh.java.inheritance;

/**
 * 상속 inheritnace
 * 부모클래스가 가지고 있는 member변수/메소드를 자식클래스에서 선언하지 않고,사용가능
 * 
 * -public class 자식클래스 extends 부모클래스{}
 * 이점 
 * - 중복 제거 => 효율적 코드 관리
 * - 공통적 코드를 부모클래스에서 관리 가능
 *
 */
public class Parent {
	String name;
	int age;
	public Parent() {
		System.out.println("부모클래스 호출");
	}
	public void say() {
		System.out.println("너의 부모다");
	}
	public void printInfo() {
		System.out.println(name+", "+age);
	}
}
