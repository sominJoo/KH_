package com.kh.test;

public class Test1 {
	public static void main(String arg[]) {
		Test1 t = new Test1();
		t.test_int();
		t.test_fd();
		t.test_char();
		t.test_string();
		t.test_boolean();
		
		t.test2();
	}
	public void test_int() {
		int a= 100;
		System.out.println(a);
		long b=999900000000L;
		System.out.println(b);
	}
	public void test_fd() {
		float a;
		a= 486.520F;
		System.out.printf("%.3f",a);
		System.out.println();
		double b;
		b=567.890123D;
		System.out.println(b);
	}
	public void test_char() {
		char a= 'A';
		System.out.println(a);
	}
	public void test_string() {
		String str = "Hello world";
		System.out.println(str);
	}
	public void test_boolean() {
		boolean a = true;
		System.out.println(a);
		System.out.println();
	}
	
	
	public void test2(){
        System.out.println("A = "+ ('A'+0)); 			//A= 65 => 65+0
        
        System.out.println("0 =" + ('0' + 0) );			// 0 = 48 => 48+0
        
        System.out.println("(char)65 = " + (char)65);	//65 형변환 =A
        
        byte bt1 = 125;
        char ch1 = 'C';
        int it1 = bt1 - ch1;							// 125 - 67
        System.out.println("it1 = "+it1);
        
        
        boolean bool = false;
        
        bool = (2.0 == 5/2);							// 5/2 = 2 =>true
        System.out.println("bool = " + bool);			
        
        bool = ('C' == 67);								//C의 아스키코드 값은 67 => true
        System.out.println("bool = " + bool);
        
        bool = ('A' == 'B'-1);							// B형변환 시 66 , A형변환 시 65 => true
        System.out.println("bool = " + bool);
        
        bool = ('a' != 97 );//부정연산자					// 'a'는 97이므로 true
        System.out.println("bool = " + bool);
    }

}
