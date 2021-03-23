package kh.java.test.array;

import java.util.Scanner;

public class Test4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Test4 t = new Test4() ;
//		t.test();
		t.test2();
	}
	
	/**
	 *  사용자의 전화번호를 입력받고, 11자리의 문자형배열에 저장한후,  가운데 4자리를 *로 가리기.  
	 *   단, 원본 배열값은 변경 없이 배열 복사본으로 변경하세요
	 */
	public void test() {
		Scanner sc = new Scanner(System.in);
		System.out.print("전화번호를 (-)없이 입력하세요 (예시.0101234578) ==> ");
		String phNum = sc.nextLine();
		
		char[] charArr = new char[11];
		for(int i = 0; i <11 ;i++ ) {
			charArr[i]= phNum.charAt(i);
		}
		
		char[] charArr2 = charArr.clone();
		for(int i =0; i<charArr2.length;i++) {
			if(i>2 && i<7) charArr2[i] ='*';
			System.out.print(charArr2[i]);
		}
		System.out.println();
	}
	
	/**
	 * substirng을 이용아여 출력하기
	 */
	public void test2() {
		Scanner sc = new Scanner(System.in);
		System.out.print("전화번호를 (-)없이 입력하세요 (예시.0101234578) ==> ");
		String phNum = sc.nextLine();
		
		//substring(시작값, 종료값) : 시작부터 종료전까지의 index 값을 출력한다
		String ph = phNum.substring(0,3)+"****"+phNum.substring(7);
		System.out.println(ph);
		
		
		//StringBuilder,StringBuffer 사용
		StringBuilder sb = new StringBuilder(phNum);
		sb.setCharAt(3, '*');
		sb.setCharAt(4, '*');
		sb.setCharAt(5, '*');
		sb.setCharAt(6, '*');
		
		StringBuffer sbf = new StringBuffer(phNum);
		sbf.setCharAt(3, '*');
		sbf.setCharAt(4, '*');
		sbf.setCharAt(5, '*');
		sbf.setCharAt(6, '*');
	}
}
