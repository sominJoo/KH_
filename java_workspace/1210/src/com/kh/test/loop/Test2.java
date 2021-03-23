package com.kh.test.loop;

import java.util.Scanner;

public class Test2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Test2 t = new Test2();
		t.test();
	}
	private void test() {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.print("정수를 입력하세요 : ");
		int num = sc.nextInt();
		String sum = "";
		int i;
		for(i=1 ; i<=num ; i++)
			if(i%2 ==0)
				sum += "박";
			else
				sum += "수";
		
		System.out.println(num+"입력 : "+sum);
	}
}
