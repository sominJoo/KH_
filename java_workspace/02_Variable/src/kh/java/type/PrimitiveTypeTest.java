package kh.java.type;

/**
 * 
 * 자료형 data type
 * 1. 기본형(Primitive Type) : 
 * 	-값(literal) 보관
 * 	- 8가지(char, boolean, byte, short, int, float, double, )
 * 
 * 2. 참조형(Reference Type) : 
 * 	- 주소값을 보관 
 * 	- 4바이트
 * 	- 기본형 제외한 모든 타입(String, System, Date ...)
 * 	- 모든 클래스는 자료형.
 * 
 * final : 한번 값 대입 후 값을 변경할 수 없는 변수. 사용은 가능
 * bit -Byte - KB - MB - GB - TB
 * 
 * ctrl + alt + 아래 방향키 : 줄단위 복사
 */
public class PrimitiveTypeTest {
	public static void main(String arg[]) {
		PrimitiveTypeTest p = new PrimitiveTypeTest();
//		p.test1();
//		p.test2();
//		p.test3();
		p.test4();
	}
	
	/**
	 * 기본형
	 * 1.논리형
	 * 	- boolean(1byte) : true | false
	 * 2.문자형
	 * 	- char(2byte)( 0~65535): 'a','가'
	 * 3.정수형 
	 *  - byte(1byte) : -128 ~ 127
	 *  - short(4byte): -32768 ~32767
	 *  - int (4byte) : -21억 ~21억 
	 *  - long(8byte) : int값을 넘어가면 뒤에 "L"을 붙여 long타입 명시
	 * 4.실수형
	 * 	- float(4byte) : 소수점 8자리까지 값 보장.
	 *  - double(8byte) : 소수점 16자리까지 값 보장. 
	 */
	public void test1() {

		boolean bool= true;
		char ch= 'a';
		byte b = 120;
		short sh = 32000;
		int i = 22;
		long l = 1234567890123L;
		float f= 0.1234567890F;
		double d  = 0.12345678901234567890 ; 
		
		
		
		System.out.println("bool = "+bool);
		System.out.println("char = "+ch);
		System.out.println("byte = "+b);
		System.out.println("short = "+sh);
		System.out.println("int = "+i);
		System.out.println("long = "+l);
		System.out.println("float = "+f);
		System.out.println("double= "+d);
	}
	
	/**
	 * final
	 */
	public void test2() {
		final int AGE = 20;
		System.out.println(""+AGE);
		final int MY = AGE + 20;
		System.out.println(""+MY);

	}
	
	
	/**
	 * Data overflow
	 * 
	 */
	public void test3() {
		int i = Integer.MAX_VALUE;
		System.out.println(i);
		
		i=i+1;
		System.out.println(i);
	}
	/**
	 * 자동형변환
	 */
	public void test4() {
		char a= '9';
		int b;
		b= a;
		System.out.println(b);
	}

}
