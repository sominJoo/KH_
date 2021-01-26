package com.exception.charcheck;

import java.util.Scanner;

public class Run {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Run r = new  Run();
		r.test1();
	}
	public void test1() {
		String str=""; int count =0;
		CharacterProcess cp = new CharacterProcess();
		try {
			Scanner sc = new Scanner(System.in);
			System.out.print("문자열을 입력하세요");
			str = sc.nextLine();
			count=cp.countAlpha(str);
			System.out.println("문자 수 :"+count);
			
		}catch(Exception e) {
			e.printStackTrace();
			return;
		}
	}
	
	

}
