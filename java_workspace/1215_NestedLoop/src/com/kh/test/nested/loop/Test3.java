package com.kh.test.nested.loop;

import java.util.Scanner;

public class Test3 {
	public static void main(String args[]) {
		Test3 t = new Test3();
		t.test();
	}

	private void test() {
		// TODO Auto-generated method stub
		Scanner sc= new Scanner(System.in);
		
		System.out.println("정수 하나를 입력하세요");
		int num = sc.nextInt();
		String str = "";
		
		if(num<1) System.out.println("양수가 아닙니다.");
		else {
			//6까지 왼쪽 정렬
			for(int i = 0; i<num ; i++) {
				for(int j = 0; j<i+1 ; j++)
					System.out.print('*');
				System.out.println();
			}
			//오른쪽 정렬
			for(int i = 0; i<num ; i++) {
				//공백을 찍어줌
				for(int j = 0; j<i+1 ; j++)
					System.out.print(' ');
				//공백 제외 자리에 *찍어줌
				for(int k = num-1; k>i ;k--)
					System.out.print('*');
				System.out.println();
			}
			
			
		}
	}
}
