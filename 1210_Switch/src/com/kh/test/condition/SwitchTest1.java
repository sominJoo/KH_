package com.kh.test.condition;

import java.util.Scanner;

public class SwitchTest1 {
	public static void main(String args[]) {
		SwitchTest1 t = new SwitchTest1();
		t.test();
	}
	public void test() {
		String main = "----------menu----------\r\n"+
				"1. 가정용 (50원/liter)\r\n" + 
				"2. 상업용 (45원/liter)\r\n" + 
				"3. 공업용 (30원/liter)\r\n" + 
				"-------------------------\n";
		System.out.println(main);
	
		Scanner sc= new Scanner(System.in);
		System.out.print("메뉴 번호 입력(사용용도) : ");
		int num = sc.nextInt();		
		
		System.out.print("물 사용량을 입력하세요 : ");
		int water = sc.nextInt();		
		int sum =0;
		double rate=0;
		int total=0;
		switch(num) {
		case 1 :
			System.out.println("\n선택 메뉴 번호 : 1. 가정용을 선택하셨습니다.");
			sum = 50*water;	
			rate = sum*0.05;
			total = sum+(int)rate;
			printInfo(sum, rate, total);
			break;
		case 2 :
			System.out.println("\n선택 메뉴 번호 : 2. 상업용을 선택하셨습니다.");
			sum = 45*water;	
			rate = sum*0.05;
			total = sum+(int)rate;
			printInfo(sum, rate, total);
			break;
		case 3 :
			System.out.println("\n선택 메뉴 번호 : 3. 공업용을 선택하셨습니다.");
			sum = 30*water;	
			rate = sum*0.05;
			total = sum+(int)rate;
			printInfo(sum, rate, total);
			break;
		default : 
			System.out.println("메뉴번호는 1,2,3만 가능합니다");
			return;
		}
	}
	public void printInfo(int sum, double rate, int total) {
		System.out.println("사용요금  : "+sum);
		System.out.println("수도세 : "+ (int)rate);
		System.out.println("총 수도요금 : "+total);
	}
}
