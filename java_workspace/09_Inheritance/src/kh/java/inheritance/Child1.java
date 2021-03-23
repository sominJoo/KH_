package kh.java.inheritance;

public class Child1 extends Parent{
	
	/**
	 * super() => 부모 생성자 호출
	 * 생략 가능
	 * 맨 첫줄 작성
	 * this와 동시 사용불가.
	 */
	public Child1() {
		System.out.println("child1 클래스 호출");
	}
	
	//메소드 오버라이드
	public void say() {
		System.out.println("child이다.");
	}
	
	public void game() {
		System.out.println("child가 게임한다.");
	}
}
