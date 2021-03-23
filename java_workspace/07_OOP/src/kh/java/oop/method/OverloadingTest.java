package kh.java.oop.method;


/**
 * Method Overloading
 * 메소드 명은 직관적으로 작성할것 : 보통 동사+명사
 *-규칙
 * 메소드명은 동일
 * 매개변수 선언부는 달라야한다.(타입, 갯수, 순서)
 * 매개변수명, 접근 제한자, 리턴 타입은 상관 x
 * 
 *
 *
 */
public class OverloadingTest {
	public static void main(String[] args) {
		System.out.println(123);
		System.out.println(123);
		System.out.println(123);
		System.out.println(123);
	}
	
	
	//overloading
	public void test() {}
	public void test(int i) {}
}
