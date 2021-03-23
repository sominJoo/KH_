package com.exception.number;

import java.util.Scanner;

public class Run {
	public static void main(String[] args) {
		Run r = new Run();
		r.test();
	}
	public void test(){
		NumberProcess n = new NumberProcess();
		Scanner  sc= new Scanner(System.in);
		int num1, num2;
		try {
			System.out.print("정수 입력 : ");
			num1 = sc.nextInt();
			System.out.print("정수 입력 : ");
			num2 = sc.nextInt();
			
			if(n.checkDouble(num1, num2))
				System.out.println(num1+"은 "+num2+"의 배수입니다.");
			else
				System.out.println("배수가 아닙니다.");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
