package com.oop.method.static_;

public class StaticMethod {
	
	//static 메소드 - 객체 생성 없이 바로 사용가능
	public static String toUpper(String str) {
		String s = str.toUpperCase();
		return s;
	}
	
	
	public static String setChar(String str, int index , char ch) {
		char[] arr = str.toCharArray();
		arr[index] = ch;
		
		//char 배열을  String으로 변환 후 return
		return new String(arr);
	}
	
	public static int getAlphabetLength(String str) {
		int count =0;
		char[]arr = str.toCharArray();
		for(int i = 0; i<str.length(); i++) {
			if((arr[i] >='A' && arr[i] <='Z') ||(arr[i] >='a' && arr[i] <='z'))
				count++;
		}
		return count;
	}
	
	public static String concat(String str,String str2) {
		return str.concat(str2);
	}
}
