package kh.java.object.array.student;

import java.util.Scanner;

public class StudentManager {
	public static final int MAX = 100;
	private StudentVO[] s= new StudentVO[MAX];
	
	public void input() {
		Scanner sc=new Scanner(System.in);
		for(int i=0;i <MAX ; i++) {
			System.out.println("=========="+(i+1)+"==========");
			System.out.print("학번 : ");
			int num = sc.nextInt();
			sc.nextLine();
			System.out.print("이름 : ");
			String name  = sc.nextLine();
			System.out.print("전화번호 : ");
			String phone =  sc.nextLine();
			s[i] = new StudentVO(num,name, phone);
			System.out.println("계속 입력하시겠습니까 (Y/N)");
			char ch = sc.nextLine().toUpperCase().charAt(0);
			if(ch == 'N') break;
		}
	}
	
	public void output() {
		System.out.println("\n==========입력완료==========");
		
		//MAX의 크기인 100개 공간을 모두 접근
		for(StudentVO svo : s) {
			//객체가 없을 경우 탈출하는 구문 필요
			if(svo ==null)
				break;
			System.out.println(svo.printInfo());
		}
		String str = new String("1");
			
	}

	public void doStuff(int x) {
		// TODO Auto-generated method stub
		System.out.print("doStuff x = " + (x++));
	}
}
