package java1204;


import java.util.Date;

import other.Otherjava;

/**
 * 
 * javadoc 주석(클래스, 메소드 레벨에 작성
 * 실제 클래스 명 : java1204.HelloWolrd
 * 
 * 패키지는 겹치지 않도록 보통 도메인을 거꾸로 사용 ex) com.kh.HelloWorld
 * 패키지는 고유하게 관리하기 위해 3레멸 이상 추천 ex) com.naver.www
 * 
 * 패키지 명은 소문자로 작성 / 클래스 명은 대문자로 시작
 * 
 * java.lang 패키지의 클래스는 import 선언없이 사용 가능
 */
public class HelloWorld {
	public static void main(String arg[]) {
//		System.out.println("Hello World");
//		System.out.println("Hello java");
		
		HelloWorld hw = new HelloWorld();
		hw.test2(3,4);
	}
	
	/**
	 * 
	 */
	public void test2(int x,int y) {
		System.out.println(
				"\t\t"+"\"ShakeIt 알람\"\n"
		+"----------------------------------------------------\n" 
						+"\t 흔들기 \t 쏴리질러 터치하기 원터치\n" 
		+"----------------------------------------------------"); 
		

		System.out.println(
				"홍길동\n" 
						+"\t\"신사임당\"\n" 
						+ "\t\t세종대왕 \\ \" \' \\/");
		
		
	}
	
}

