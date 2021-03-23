package com.kh.test.condition;

import java.util.Scanner;

public class Test1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Test1 t = new Test1();
		t.test1();
		System.out.println();
		t.test2();
		System.out.println();
		t.test3();
	}

	private void test1() {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		
		System.out.print("국어 점수를 입력하세요 : ");
		int korean = sc.nextInt();
		
		System.out.print("영어 점수를 입력하세요 : ");
		int english = sc.nextInt();
		
		System.out.print("국어 점수를 입력하세요 : ");
		int math = sc.nextInt();
		
		int sum = korean+english+math;
		
		if(sum >=250)
			System.out.println("우수생입니다.");
		
	}
	
	private void test2() {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		System.out.print("A 연봉를 입력하세요 : ");
		int a = sc.nextInt();
		
		System.out.print("B 연봉를 입력하세요 : ");
		int b = sc.nextInt();
		
		System.out.print("C 연봉를 입력하세요 : ");
		int c = sc.nextInt();
		
		if (a>=5000)
			System.out.println("a는 고액연봉자입니다.");
		if (b>=5000)
			System.out.println("b는 고액연봉자입니다.");
		if (c>=5000)
			System.out.println("c는 고액연봉자입니다.");
	}
	
	
	private void test3() {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		System.out.print("정수 한개를 입력하세요 : ");
		int a = sc.nextInt();
		
		if( a%2 == 0)
			System.out.println("짝수다");
		else 
			System.out.println("홀수다");
	}

}
