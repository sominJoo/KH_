package kh.java.codition;

import java.util.Scanner;

public class SwitchConditionTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SwitchConditionTest s = new SwitchConditionTest();
		s.test5();
	}
	public void test1() {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("1 or 2 or 3을 눌러주세요");
		int num = sc.nextInt();
		int price;
		switch(num) {
		case 1 : 
			System.out.println("case 1 실행 ");
			price = 10000;
			break;
		case 2 : 
			System.out.println("case 1 실행 ");
			price = 10000;
			break;
		case 3 : 
			System.out.println("case 1 실행 ");
			price = 10000;
			break;
		default : 
			System.out.println("잘못 입력");
			return;
		}
		
		System.out.println(price + "원 결재해주세요");
	}
	public void test5() {
		
		String menu = "======\n"
				+ "\t오늘의 메뉴 \n"
				+ " ----------\n"
				+ "1.순댓국\n"
				+ "2.미역국 \n"
				+ "3.김치찌개\n"
				+ "=======\n"
				+ "선택 : " ;
		System.out.print(""+menu);
		Scanner sc = new Scanner(System.in);
		int num = sc.nextInt();
		
		int choice =  menu(num);
		
		if(choice != -1) {
			System.out.println(choice+"번 선택하셨습니다.");
		}
		else {
			System.out.println(choice+" return!! 잘못입력하셨습니다.");
		}
	} 
	
	public int menu(int num) {		
		switch(num) {			
		case 1 : 
			return num;
		case 2 : 
			return num;
		case 3 : 
			return num;
		default : 
			return -1;
		}
	}
	

}
