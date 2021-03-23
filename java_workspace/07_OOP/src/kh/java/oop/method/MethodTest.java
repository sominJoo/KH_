package kh.java.oop.method;


/**
 * static method(class메소드) : "클래스명.메소드명" 호출
 * 				- static 자원(field, method)만 접근 가능
 * non static method(member메소드, instance메소드) : "객체.메소드명" 호출
 *				- non, static 자원 모두 접근 가능
 */
public class MethodTest {
	private int num =100;
	private static int snum = 99;
	public static void main(String[] args) {
		MethodTest.a(); // static method 호출
		MethodTest m = new MethodTest();
		m.b(); 			// non static method 호출
		System.out.println(MyUtil.add(100, 7));
	}
	public static void a() {
		System.out.println("a");
//		System.out.println(num); => static 메소드 안에서 static 메소드가 아닌 자원은 접근 불가
		System.out.println(snum);
	}
	public void b() {
		System.out.println("b");
		System.out.println(num);
		System.out.println(snum);
	}
}
