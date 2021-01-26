package com.kh.test.loop;

import java.util.Scanner;

public class Test3 {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Test3 t = new Test3();
		t.test();
	}
	private void test() {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.print("정수를 입력하세요 : ");
		int num = sc.nextInt();
		if(num <1 || num >9) {
			System.out.println("잘못 입력하셨습니다. 프로그램을 종료합니다.");
		}
		else {
			for(int i=1; i<=9;i++)
				System.out.println(num+"X"+i+" = "+(num*i));
		}
	}
}
