package com.kh.test.nested.loop;

import java.util.Scanner;

public class Test1 {
	public static void main(String args[]) {
		Test1 t = new Test1();
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
				for(int j = 0; j<i+1 ; j++)
					System.out.print(j+1);
				System.out.println();
			}
			
		}
	}
	
}
