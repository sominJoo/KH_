package com.kh.test.break_continue;

import java.util.Scanner;

public class Test1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Test1 t = new Test1();
//		t.test1();
		t.test2();
	}
	
	/**
	 * 홀수 곱의 합
	 */
	public void test1() {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("정수 한개를 입력하세요 : ");
		int num = sc.nextInt();
		int i =0;
		int sum = 1;
		while(true) {
			i ++;
			if(i > num)
				break;
			else if(i%2 != 0) {
				sum *= i;
			}
		}
		System.out.println("홀수 곱의 합은 : "+sum);
	}
	
	/**
	 * 홀수의 합
	 */
	public void test2() {
		int a1, a2;
		int sum = 0;
		boolean b= false;
		Scanner sc = new Scanner(System.in);
		
		System.out.print("정수를 입력하세요 : ");
		int num1 = sc.nextInt();
		
		System.out.print("정수를 입력하세요 : ");
		int num2 = sc.nextInt();
		
		//print시 사용할 원래 값 저장.
		a1=num1; a2= num2;
		
		while(true) {
			//두번째 입력값이 큰 경우
			if(num1<num2) {
				//홀수라면 sum에 더함
				if(num1 %2 != 0)
					sum += num1;
				num1++;
				b = true;
			}
			//두번째 입력값이 작은 경우
			else if(num1>num2) {
				if(num2 %2 != 0)
					sum += num2;
				num2++;
			}
			//두 값이 같으면 종료
			else if(num1 == num2) {
				break;
			}
		}
		
		System.out.println("=============");
		
		//b=true면 두번째 입력값이 큰 경우.
		if(b)
			System.out.println(a1+"부터 "+a2+"까지의 홀수의 합은 "+sum);
		else
			System.out.println(a2+"부터 "+a1+"까지의 홀수의 합은 "+sum);
		
	}
}
