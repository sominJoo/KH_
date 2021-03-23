package com.kh.test.condition;

import java.util.Scanner;

public class Test5 {
	public static void main(String arg[]) {
		Test5 t = new Test5();
		t.test1();
	}

	private void test1() {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		
		System.out.print("키(cm)를 입력하세요 : ");
		double height = sc.nextDouble();
		
		System.out.print("몸무게(kg)를 입력하세요 : ");
		double weight = sc.nextDouble();
		
		height /=100;		
		double BMI = weight/(height*height);
		if(BMI < 18.5)
			System.out.println("저체중");
		else if(BMI >= 18.5 && BMI <23)
			System.out.println("정상 체중");
		else if(BMI >= 23 && BMI <25)
			System.out.println("과체중");
		else if(BMI >= 25 && BMI <30)
			System.out.println("비만");
		else if(BMI >= 30 )
			System.out.println("고도비만");
	}
	
}
