package kh.java.scanner;

import java.util.Scanner;

public class ScannerTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ScannerTest s = new ScannerTest();
		s.test1();
		//s.test2();
		s.person();
	}
	
	/**
	 * 
	 * import 단축어 : ctrl + shift +o
	 * 
	 * Scanner
	 * 1.next계열 
	 *  - next() : String return
	 *  - nextInt() : int return
	 *  - nextDouble() : double return
	 *  - nextBoolean() : Boolean return
	 * 2.nextline 계열
	 *  - String return
	 */
	public void test1() {
		
		//System.out : 콘솔에 표준 출력
		//Sustem.in : 키보드에서 표준 입력
		
		Scanner sc = new Scanner(System.in);
//		System.out.print("이름 : ");
//		String s = sc.next();
//		System.out.println("당신의 이름은 " + s + "입니다");
		
//		System.out.print("정수 : ");
//		int i = sc.nextInt();
//		System.out.println("num = " + i);
		
//		System.out.print("실수 : ");
//		double dnum = sc.nextDouble();
//		System.out.println("num = "+dnum);
		
		
//		System.out.print("true or false : ");
//		boolean bool = sc.nextBoolean();
//		System.out.println("bool = "+bool);
		
//		System.out.print("char : ");
//		char ch = sc.next().charAt(0);
//		System.out.println("char = "+ch);
		
		
		//next는 버퍼에 문자열이 저장되고 ,jvm에 공백과 개행문자 전까지 입력전까지 읽어서 반환(사용자 입력값 이전 공백은 무시)
}
	
	/**
	 * nextLine은 입력버퍼에서 개행문자까지 읽어온 후, 개행문자를 제외하고 반환
	 * next -> nextLine 사용 불가 : next가 버퍼에 개행문자를 남기고 불러오고, ne xtLine은 next가 남긴 개행문자를 출력함
	 */
	public void test2() {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("이름를 입력하세요 : ");
		String name = sc.next();
		System.out.println("당신의 이름는 \"" + name +"\" 입니다.");
		
		sc.nextLine(); // next가 남긴 개행문자를 날림
		
		System.out.print("주소를 입력하세요 : ");
		String addr = sc.nextLine();
		System.out.println("당신의 주소는 \"" + addr +"\" 입니다.");
	}
	
	/**
	 * 이름, 나이, 주소 키, 몸무게를 입력받고 출력하세요
	 */
	public void person() {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("이름를 입력하세요 : ");
		String name = sc.nextLine();
				
		System.out.print("나이를 입력하세요 : ");
		int age = sc.nextInt();
		sc.nextLine();
		
		System.out.print("주소를 입력하세요 : ");
		String addr = sc.nextLine();
		
		
		System.out.print("키를 입력하세요 : ");
		double height = sc.nextDouble();
		
		System.out.print("몸무게를 입력하세요 : ");
		double weight = sc.nextDouble();
		
		System.out.println("당신의 정보는 \"이름 " 
		+ name +", 나이 " 
		+ age +", 주소 " 
		+ addr +", 키 " 
		+ height +"cm, 몸무게 " 
		+ weight+"kg\" 입니다.");
	}
	
}
