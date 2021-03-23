package com.exception.rnd;

import java.util.Scanner;

public class NumberOk {
	static int num2 = (int)(Math.random()*100)+1;
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		NumberOk n = new NumberOk();
		System.out.println(num2);
		
		Scanner sc = new Scanner(System.in);
		int count =1;
		while(true) {
			int num  =n.getNumber(); 
			//못맟주면
			if(n.checkNumber(num)!= 0) {
				count++;
			}
			//맞추면
			else {
				System.out.println(count +"번만에 맞추셨습니다");
				count =1;	// count 초기화
				System.out.println("계속 하시겠습니까?(y/n)");
				char check = sc.nextLine().toUpperCase().charAt(0);
				if(check  == 'Y') {
					//난수 재발생
					num2=(int)(Math.random()*100)+1;
					System.out.println(num2);
					continue;
				}
				else
					break;
			}
		}
		System.out.println("=====종료=====");
		
	}
	public int getNumber() {
		int num =0;
		try {
			Scanner sc = new Scanner(System.in);
			System.out.print("정수를 입력하세요 : ");
			num = sc.nextInt();
		}catch(Exception e) {
			e.printStackTrace();
			System.exit(0);   		//예외발생시 종료
		}
		
		return num;
	}
	
	public int checkNumber(int num1) {
		if(num1 < num2) { 
			System.out.println("입력한 숫자보다 큽니다.");
			return -1;
		}
		else if(num1 > num2) {
			System.out.println("입력한 숫자보다 작습니다.");
			return 1;
		}
		return 0;
	}

}
