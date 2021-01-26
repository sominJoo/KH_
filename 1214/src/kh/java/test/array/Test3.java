package kh.java.test.array;

import java.util.Scanner;

public class Test3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Test3 t = new Test3() ;
		t.test1();
	}
	public void test() {
		Scanner sc = new Scanner(System.in);
		System.out.println("문자열을 입력하세요");
		String str = sc.nextLine();
		char[] charArr = new char[str.length()];
		for(int i =0 ;i<charArr.length; i++ ) {
			charArr[i] = str.charAt(i);
		}
		
		System.out.println("찾는 문자를  입력하세요");
		char ch = sc.nextLine().charAt(0);
		
		int count =0;
		for(int i = 0 ; i <charArr.length ; i++) {
			if(charArr[i]==ch)
				count++;
		}
		
		System.out.println("입력하신 문자열 \"" +str +"\"에서 찾으시는 문자 " +"\'"+ch +"\'는 "+count+"개 입니다.");
	}
	
	
	/**
	 * tocharArray
	 */
	public void test1() {
		Scanner sc = new Scanner(System.in);
		System.out.println("문자열을 입력하세요");
		String str = sc.nextLine();
		
		//str를 char형 배열로 변환
		char[] chArr = str.toCharArray();
		
		System.out.println("찾는 문자를  입력하세요");
		char ch = sc.nextLine().charAt(0);
		
		int count =0;
		for(int i = 0 ; i <chArr.length ; i++) {
			if(chArr[i]==ch)
				count++;
		}
		
		System.out.println("입력하신 문자열 \"" +str +"\"에서 찾으시는 문자 " +"\'"+ch +"\'는 "+count+"개 입니다.");
	}

}
