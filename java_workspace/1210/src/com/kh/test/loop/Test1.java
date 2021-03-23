package com.kh.test.loop;

import java.util.Scanner;

public class Test1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Test1 t = new Test1();
		t.test();
	}
	private void test() {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.print("정수를 입력하세요 : ");
		int num = sc.nextInt();
		int sum=0;
		int i;
		for(i=1 ; i<=num ; i++)
			if(i%2 ==0)
				sum += i;
		
		System.out.println(num+"까지의 짝수의 합은 "+sum+" 이다.");
	}
	

}
