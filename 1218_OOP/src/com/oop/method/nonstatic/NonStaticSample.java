package com.oop.method.nonstatic;

import java.util.Arrays;
import java.util.Scanner;

public class NonStaticSample {
	public void printLottoNumbers() {
		int[] arr = new int[6];
		for(int i =0; i <arr.length; i++) {
			int num = (int)(Math.random()*45)+1;
			arr[i] = num;
			
			//중복 검사
			for(int j =0 ; j<i; j++) {
				if(num == arr[j])
					i--;	// 중복이면 i번째  배열값을 다시 받아야함
			}
		}
		//arr배열을 String으로 표현하여 출력
		System.out.println(Arrays.toString(arr));
	}
	
	public void outputChar(int len, char ch) {
		String str = "";
		for(int i=0; i<len ; i++)
			str += ch;
		System.out.println(str);
	}
	
	public char alphabet() { 
		int num = (int)(Math.random()*26); 	//26가지 경우의 수 
		//0이면 대문자 65
		//1이면 소문자 97
		num += (int)(Math.random()*2) == 0 ? 65 : 97;
		return (char)num;
	}
	
	public String mySubstring(String str, int begin, int end) {
		if(str == null) return null;
		return str.substring(begin, end);
	}
	
	
}
