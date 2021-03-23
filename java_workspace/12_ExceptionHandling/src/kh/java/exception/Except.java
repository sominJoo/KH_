package kh.java.exception;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.InputMismatchException;
import java.util.Scanner;

public class Except {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Except e = new Except();
//		e.test2();
	}
	public void test1() {
		
		while(true) {
			Scanner sc = new Scanner(System.in);
			int num1=0, num2=0;
			try {
				
				System.out.print("정수 입력 : ");
				num1 = sc.nextInt();
				System.out.print("정수 입력 : ");
				num2 = sc.nextInt();
				
				System.out.println("합 : "+(num1+num2));
				break;
				
			}catch(InputMismatchException e) {
				System.out.println("잘못 입력");
			}
		}
		
	}
	
	/**
	 * 예외처리 강제화
	 * 1. try-catch
	 * 2. throws절 통해 회피
	 */
	public void test2() throws FileNotFoundException{
		//1.try-catch
//		try {
//			FileReader fr = new FileReader("test.txt");
//			System.out.println("파일찾음");
//		}
//		catch(Exception e) {
//			e.printStackTrace();
//		}
		
		//2.throws 통해 회피
		FileReader fr = new FileReader("test.txt");
		System.out.println("파일 찾음");
	}
}
