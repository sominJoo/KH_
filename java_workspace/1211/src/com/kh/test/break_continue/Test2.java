package com.kh.test.break_continue;

import java.util.Random;
import java.util.Scanner;

public class Test2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Test2 t = new Test2();
		t.test();
	}
	public void test() {
		Random rnd = new Random();
		Scanner sc = new Scanner(System.in);
		int rndNum = rnd.nextInt(100)+1;
		int num = 0;
		int count =0;
		
		while(true) {
			System.out.println("1~100까지의 정수 하나를 입력하세요");
			num = sc.nextInt();
			count ++;			
			if(rndNum < num) {
				System.out.println("입력하신 정수보다 작습니다.");
				}
			else if(rndNum > num) {
				System.out.println("입력하신 정수보다 큽니다.");				
				}
			else {
				System.out.println("정답입니다. "+ count+"회만에 정답을 맞추셨습니다" );
				break;
				}
			}
		}

}
