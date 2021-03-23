package com.kh.test.nested.loop;

import java.util.Scanner;

public class Test2 {
	public static void main(String args[]) {
		Test2 t = new Test2();
		t.test();
	}

	private void test() {
		// TODO Auto-generated method stub
		Scanner sc= new Scanner(System.in);
		
		System.out.println("정수 하나를 입력하세요");
		int num = sc.nextInt();
		
		if(num<1) System.out.println("양수가 아닙니다.");
		else {
			for(int i = 0; i<num ; i++) {
				for(int j = num; j>i ; j--)
					System.out.print('*');
				System.out.println();
			}
			
		}
	}
}
