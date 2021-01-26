package com.kh.test.loop;

import java.util.Scanner;

public class Test4 {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Test4 t = new Test4();
		t.test();
	}
	private void test() {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.print("문자열을 입력하세요 : ");
		String str = sc.nextLine();
		
		System.out.print("검색할 문자을 입력하세요 : ");
		char ch = sc.nextLine().charAt(0);
		
		if(ch >= 'a' && ch <= 'z') {
			search(str,ch);
		}
		else if(ch >= 'A' && ch <= 'Z'){
			search(str,ch);
		}
		else 
			System.out.println("영문자가 아닙니다");
	}
	private void search(String str, char ch) {
		// TODO Auto-generated method stub
		int count=0;
		for(int i = 0 ; i<str.length() ; i++) {
			//str의 0번 위치부터 ch와 비교하여 값이 같으면 count해줌
			if(str.charAt(i) == ch)
				count++;
		}
		System.out.println("\'"+ch+"\'가 포함된 갯수 : "+count +"개");
	}
}
