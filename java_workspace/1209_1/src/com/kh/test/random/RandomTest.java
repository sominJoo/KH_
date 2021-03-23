package com.kh.test.random;

import java.util.Random;
import java.util.Scanner;

public class RandomTest {
	public static void main(String arg[]) {
		RandomTest r = new RandomTest();
		r.test();
	}

	private void test() {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		System.out.println("=== 가위 바위 보 게임 ===");
		System.out.print("숫자를 선택하세요 (1.가위 | 2.바위 || 3.보): ");
		int user = sc.nextInt();
		
		//컴퓨터는 1~3까지의 난수로 줌
		Random r = new Random();
		int pc = r.nextInt(3)+1;
		
		System.out.println("========= 결과 =========");
		if(user == 1)
			System.out.println("당신은 가위를 냈습니다.");
		else if (user == 2)
			System.out.println("당신은 바위를 냈습니다.");
		else if (user == 3)
			System.out.println("당신은 보를 냈습니다.");
		
		if(pc == 1)
			System.out.println("컴퓨터는 가위를 냈습니다.");
		else if (pc == 2)
			System.out.println("컴퓨터는 바위를 냈습니다.");
		else if (pc == 3)
			System.out.println("컴퓨터는 보를 냈습니다.");
		
		
		//결과
		System.out.println("======================");
		//user가 이긴 상황
		if((user ==1 &&pc ==3) || (user ==2 && pc ==1) || (user == 3 && pc ==2 ))
			System.out.println("당신이 이겼습니다ㅜㅜ");
		//컴퓨터가 이긴상황
		else if((pc ==1 &&user ==3) || (pc ==2 && user ==1) || (pc == 3 && user ==2 ))
			System.out.println("내가 이겼습니다^^");
		//비긴상황
		else if((pc ==1 &&user ==1) || (pc ==2 && user ==2) || (pc == 3 && user ==3 ))
			System.out.println("비겼습니다.");
		else
			System.out.println("오류!");
	}
}
