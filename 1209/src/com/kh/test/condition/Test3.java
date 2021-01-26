package com.kh.test.condition;

import java.util.Scanner;

public class Test3 {
	public static void main(String arg[]) {
		Test3 t = new Test3();
		t.test();
	}

	private void test() {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		System.out.print("정수 2개를 입력하세요 : ");
		int a = sc.nextInt();
		int b = sc.nextInt();
		if(a <0 ||b <0) 
			System.out.println("잘못 입력 하셨습니다. 프로그램을 종료합니다.");
		else {
			System.out.print("연산자를 입력하세요 : ");
			char ch = sc.next().charAt(0);
			
			if (ch == '+') {
				System.out.println(a + "+" + b + " = " + (a+b));
			}
			else if (ch == '-') {
				System.out.println(a + "-" + b + " = " + (a-b));
			}
			else if (ch == '*') {
				System.out.println(a + "*" + b + " = " + (a*b));
			}
			else if (ch == '/') {
				System.out.println(a + "/" + b + " = " + (a/b));
			}
			else
				System.out.println("잘못 입력 하셨습니다. 프로그램을 종료합니다.");
		}
	}
}
