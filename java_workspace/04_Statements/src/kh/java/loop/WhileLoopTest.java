package kh.java.loop;

import java.util.Scanner;

public class WhileLoopTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		WhileLoopTest w = new WhileLoopTest();
		w.test8();
	}
	public void test8() {
		Scanner sc = new Scanner(System.in);
		String mainMenu = "==========\n"
				+"1.저장 \n"
				+"2.조회 \n"
				+"3.수정 \n"
				+"4.삭제\n"
				+"0.종료\n"
				+"==========\n"
				+"선택 : ";
		int num =0;		
		do {
			System.out.println(mainMenu);
			num  = sc.nextInt();
			switch(num) {
			case 1 : save(); break;
			case 2 : selectList(); break;
			case 3 : update(); break;
			case 4 : delect(); break;
			case 0 : 
				System.out.println("프로그램 종료");
				return;
			default : 
				System.out.println("잘못 입력");
			}
		}while(num != 0);
		
	}
	private void save() {
		// TODO Auto-generated method stub
		System.out.println("저장 입력");
	}
	private void update() {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.println("수정 입력");
		String  updateMenu = "==========\n"
				+"1. 이름수정 \n"
				+"2. 번호 수정 \n"
				+"3. 주소 수정\n"
				+"0. 메뉴로 돌아가기\n"
				+"==========\n"
				+"선택 : ";
		int num =0;		
		do {
			System.out.println(updateMenu);
			num  = sc.nextInt();
			switch(num) {
			case 1 : System.out.println("1.이름 수정 선택"); break;
			case 2 : System.out.println("2.전화번호 수정선택"); break;
			case 3 : System.out.println("3.주소 수정 선택"); break;
			case 0 : return;								// return은 메인메뉴로 돌아가는 의미
			default : 
				System.out.println("잘못 입력");
			}
		}while(num != 0);
	}
	private void delect() {
		// TODO Auto-generated method stub
		System.out.println("삭제 입력");
	}
	private void selectList() {
		// TODO Auto-generated method stub
		System.out.println("조회 입력");
	}

}
