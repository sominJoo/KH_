package kh.java.api.wrapper;

import java.awt.List;
import java.util.ArrayList;

/**
 * WrapperClass
 * -기본형에 대응하는 참조형 클래스
 * - 기본형을 감싼 형태이기 때문에  Wrapper라 부른다.
 * 1. 기본형을 참조형으로 사용해야할때
 * 2. 기본형 관련 메소드,상수를 사용해야 할때.
 * 
 */
public class WrapperClassTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		WrapperClassTest w = new WrapperClassTest();
		w.test1();
		w.test2();
	}
	/**
	 * 기본형		참조형(Wrapper)
	 * boolean - Boolean
	 * char	- Character
	 * byte - Byte
	 * short -  Short
	 * int - Integer
	 * long - Long
	 * float - Float
	 * double- Double
	 */
	public void test1() {
		int num =100;
		Integer i = new Integer(100);
		
		//auto-boxing : 기본형 - wrapper
		//auto- unboxing : Wrapper- 기본형
		System.out.println(num+i);
		Integer j =3;
		System.out.println(j==3);
		System.out.println(j.intValue()==3);
		System.out.println(j.hashCode());
		System.out.println(Integer.MAX_VALUE);
		
		//기본형이 아닌 참조형을 써야하는 경우
		ArrayList<Integer> list = new ArrayList<>();
	}
	/**
	 * Wraaperclass는 형변환 static 메소드 지원
	 * 문자열데이터를 가각 타입으로 변환
	 * 
	 */
	public void test2() {
		int i = Integer.parseInt("100");
		System.out.println(i*100);
		
	}

}
