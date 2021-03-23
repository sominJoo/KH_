package com.kh.test.condition;

import java.util.Scanner;

public class Test2 {
	public static void main(String arg[]) {
		Test2 t = new Test2();
		t.test1();
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
		double avg = (double)sum/3;
		
		boolean bool = korean >=40 && english >=40 && math >=40;
		
		if(bool ==true && avg >=60)
			System.out.println("합격");
		else 
			System.out.println("불합격");
	}
	
}
