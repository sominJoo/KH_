package com.kh.test.break_continue;

import java.util.Scanner;

public class Test3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Test3 t = new Test3();
		t.test();
	}
	public void test() {
		Scanner sc = new Scanner(System.in);
		int num =0;
		boolean bn = false;
		
		//문자 입력은 무한루프로 받아서 잘못 입력 시 다시 입력이 가능하게 한다.
		while(true) {
			System.out.println("2보다 큰 정수를 입력하세요");
			num = sc.nextInt();
			if(num <2) 
				System.out.println("잘못 입력하셨습니다. 다시 입력하세요.");
			else 
				break;
		}
		
		// 2보다 큰수들을 입력값에 나누어 나머지가 0이면 소수가 아니다.
		for(int i = 2 ; i<num ;i++) {
			if(num%i ==0) {
				//소수가 아닐 시 불린 값을 변화하게 해서 구분
				bn = true;
				break;
			}
		}
		
		//bn=true면 자기보다 작은 수 로 나누어 졌을때. 즉, 소수가 아닐때이다.
		if(bn) 
			System.out.println("소수가 아니다.");
		else
			System.out.println("소수다");
	}

}
