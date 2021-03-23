package com.kh.test.condition;

import java.util.Scanner;

public class Test4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Test4 t = new Test4();
		t.test();
	}

	private void test() {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		System.out.print("1~10의 정수 입력하세요 : ");
		int num = sc.nextInt();	
		if (num <1 && num >10) {
			System.out.println("반드시 1~10사이의 정수를 입력해야 합니다");
		}
		else {
			if(num%2 == 0)
				System.out.println("짝수다");
			else 
				System.out.println("홀수다");
		}
		
	}
}