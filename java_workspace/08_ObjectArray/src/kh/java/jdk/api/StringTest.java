package kh.java.jdk.api;

/**
 * 동등비교 연산자
 * 1. 기본형 연산자
 * 2. 참조형 연산자
 *  -true : 같은 객체를 가리킴
 *  -false : 다른 객체를 가리킴
 *  
 *  String 참조형
 *  String 값비교는 equals를 상용
 *  
 *
 */
public class StringTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int a = 10, b =20;
		System.out.println(a == b);
		
		StringTest s1 = new StringTest();
		StringTest s2 =s1;		
		System.out.println(s1 == s2);
	}

}
