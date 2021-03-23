package kh.java.format;

public class PrintfTest {

	public static void main(String[] args) {
		PrintfTest p = new PrintfTest();
		p.test();
	}
	
	
	/**
	 * System.out.printf("형식문자열", 요소, 요소, ...)
	 */
	public void test() {
		boolean b= true;
		char ch = 'a';
		int i = 100;
		String s = "안녕하세요";
		double d = 0.12345678;
		
		System.out.printf("%b%n", b);
		System.out.printf("%c%n", ch);
		System.out.printf("%d%n", i);
		
		//소수점 8번째 자리까지 반올림 처리
		System.out.printf("%.8f%n", d);
		
		//%10s : 10개 공간을 확보하고, 요소를 우측정렬
		System.out.printf("[%10s]%n", "abc");
		//%-10s : 10개 공간을 확보하고, 요소를 좌측정렬
		System.out.printf("[%-10s]%n", "abc");
		
		//%s : 모든 타입 사용가능
		//%.5s : 문자열의 자리수. 소수점 자리수 x
		System.out.printf("%s  %s  %s  %s  %.5s \n", b,ch,i,s,d);
	}

}
