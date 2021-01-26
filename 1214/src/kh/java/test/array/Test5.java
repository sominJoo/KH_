package kh.java.test.array;

import java.util.Scanner;

public class Test5 {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Test5 t = new Test5();
		t.test();
	}
	public void test() {
		System.out.println("주민번호를 입력하세요 : ");
		Scanner sc= new Scanner(System.in);
		String str = sc.nextLine();
		
		char[] chArr = new char[13];
		for(int i= 0; i<chArr.length ; i++) {
			chArr[i] = str.charAt(i);
		}
		char[] arr = chArr.clone();
		
		for(int i =0; i<arr.length;i++) {
			if(i>6) arr[i] ='*';
		}
		for(int i =0; i<arr.length;i++) {
			if(i == 6) System.out.print("-");
			System.out.print(arr[i]);
		}
	}

}
