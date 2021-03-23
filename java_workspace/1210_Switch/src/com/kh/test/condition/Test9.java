package com.kh.test.condition;

import java.util.Scanner;

public class Test9 {
	public static void main(String args[]) {
		Test9 t = new Test9();
		t.test();
	}
	public void test() {
		String mainMenu = "*********주메뉴*********\r\n"+
				"a. 불고기버거 ------------5000\r\n" + 
				"b. 새우버거 --------------4000\r\n" + 
				"c. 치킨버거 --------------4500\r\n" + 
				"d. 한우버거 -------------10000\r\n" + 
				"e. 디버거 ----------------7000\r\n" + 
				"*************************\n";
		String sideMenu= "*********사이드메뉴*********\r\n"+
				"1. 콜라 -------------------1500\r\n" + 
				"2. 사이다 -----------------1500\r\n" + 
				"3. 밀크쉐이크-------------2500\r\n" + 
				"4. 레드불------------------3000\r\n" + 
				"*************************\n";
		System.out.println(mainMenu);
		System.out.println(sideMenu);
		
		Scanner sc= new Scanner(System.in);
		System.out.print("주메뉴 문자 입력 : ");
		char ch = sc.nextLine().toLowerCase().charAt(0);
	
		String main = "";
		int mainCost=0;
		
		switch(ch) {
		case 'a' :
			main = "불고기버거 ";
			mainCost= 5000;
			break;
		case 'b' :
			main = "새우버거 ";
			mainCost= 4000;
			break;
		case 'c' :
			main = "치킨버거 ";
			mainCost= 4500;
			break;
		case 'd' :
			main = "한우버거 ";
			mainCost= 10000;
			break;
		case 'e' :
			main = "디버거 ";
			mainCost= 7000;
			break;
		default : 
			System.out.println("번호가 잘못되었습니다. 영업을 종료합니다.");
			return;
		}
		
		//사이드 메뉴 입력 부분
		System.out.print("사이드 메뉴 숫자 입력:");
		int num = sc.nextInt();
		
		String side = "";
		int sideCost=0;
		
		switch(num) {
		case 1 :
			side = "콜라";
			sideCost = 1500;
			break;
		case 2 :
			side = "사이다";
			sideCost = 1500;
			break;
		case 3 :
			side = "밀크쉐이크";
			sideCost = 2500;
			break;
		case 4 :
			side = "레드불";
			sideCost = 3000;
			break;
		default : 
			System.out.println("번호가 잘못되었습니다. 영업을 종료합니다.");
			return;
		}
		
		System.out.println(main + ","+side +"은  총 " + (mainCost+sideCost)+"원 입니다.");
	}
}
