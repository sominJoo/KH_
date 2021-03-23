package kh.java.codition;

import java.util.Scanner;

public class IfCondition {
	public static void main(String args[]) {
		IfCondition i = new IfCondition();
		//i.ageCheck();
		//i.test();
		i.test1();
	}
	
	public void ageCheck() {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("나이 입력 : ");
		int age = sc.nextInt();
		
		if(age>=20) {
			System.out.println("성인인증 되었습니다.");
		}
		else {
			System.out.println("미성년자 입니다.");
		}
	}
	
	public void test() {
		Scanner sc = new Scanner(System.in);
		System.out.print("문자 입력 : ");
		char ch = sc.nextLine().charAt(0);
		
		if(ch >47 && ch<58) { //ch >='0' && ch <='9'
			System.out.println("숫자를 입력하셨습니다.");
		}
		else {
			System.out.println("문자를 입력하셨습니다.");
		}
	}
	
	public void test1() {
		Scanner sc = new Scanner(System.in);
		System.out.print("문자 입력 : ");
		char ch = sc.nextLine().charAt(0);
		
		if(ch >='0' && ch <='9') { 
			System.out.println("숫자를 입력하셨습니다.");
		}
		else if(ch >='A' && ch <='z'){
			if(ch >=91 && ch <=96)
				System.out.println("특수문자를 입력하셨습니다.");
			else
				System.out.println("영문자를 입력하셨습니다.");
		}
		else if(ch >='ㄱ' && ch <='힣'){
			System.out.println("한글를 입력하셨습니다.");
		}
		else {
			System.out.println("특수문자를 입력하셨습니다.");
		}
	}
	
}
