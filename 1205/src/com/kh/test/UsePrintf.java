package com.kh.test;

public class UsePrintf {
	public static void main(String arg[]) {
		UsePrintf u = new UsePrintf();
		u.test();
	}
	public void test() {
		char a= 'A';
		System.out.println("char형 출력");
		System.out.printf("%c%n", a);	
		System.out.printf("%s%n%n", a);
		
		int i = 1;
		System.out.println("int형 출력");
		System.out.printf("%d%n", i);
		System.out.printf("%4d%n", i);		//자리수 지정
		System.out.printf("%-4d%n", i);		//자리수(-) 지정
		System.out.printf("%04d%n%n", i);	//자리수(0) 지정
		
		int in = 27;
		System.out.println("int형 10,8,16진수 출력");
		System.out.printf("%d%n", in);		//10진수 출력
		System.out.printf("%o%n", in);		//8진수 출력
		System.out.printf("%x%n%n", in);	//16진수 출력
		
		float f = 2.600F;
		System.out.println("float형 출력");
		System.out.printf("%f%n", f);		//자리수 지정 안함
		System.out.printf("%.2f%n", f);		//소수점 2번째 자리로 지정
		System.out.printf("%.3f%n%n", f); 	//소수점 3번째 자리로 지정
		
		String str = "String형 출력";
		System.out.printf("%s", str);
	}
	
}
