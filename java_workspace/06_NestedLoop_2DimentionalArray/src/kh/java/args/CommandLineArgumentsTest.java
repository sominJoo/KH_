package kh.java.args;

import java.util.Scanner;

public class CommandLineArgumentsTest {

	/**
	 * 프로그램 시작과 동시에 사용자 입력값을 받아 처리
	 * 사용자 입력값을 공백을 구분자로 끊어서 String[]로 만들어 main method에 전달
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		for(int i =0; i<args.length ; i++) {
//			System.out.println(args[i]);
//		}
//		System.out.println("프로그램 종료");
		CommandLineArgumentsTest c =new CommandLineArgumentsTest();
//		c.test1(1);
//		c.test1(1,2);
//		c.test1(1,2,3);
//		c.test1(1,2,3,4);
		c.test2();
	}

	/**
	 * int... => 가변 인자
	 * - 타입이 동일하고, 개수가 정해지지 않은 매개인자를 처리할 수 있다.
	 * - 가변인자는 매개변수 선언부에서 마지막에 작성해야한다.
	 * @param arr
	 */
	private void test1(int...arr) {
		// TODO Auto-generated method stub
		for(int i =0; i<arr.length ; i++) {
			System.out.print(arr[i]+"");
		}
		System.out.println();
	}
	
	public void test2() {
		Scanner sc= new Scanner(System.in);
		System.out.print("정수 : ");
		int row = sc.nextInt();
		
		//배열 선언
		int[][] arr= new int[row][];
		for(int i =0 ;i < arr.length; i++) {
			arr[i] = new int[row--];
			System.out.println(i+"행의 길이 " +arr[i].length);
		}
		System.out.println();
		
		//배열 값 저장
		int num =0;
		for(int i =0 ;i < arr.length; i++) {
			for(int j =0 ;j < arr[i].length; j++) {
				arr[i][j] = ++num;
				System.out.print(arr[i][j] +" ");
			}
			System.out.println();
		}			
	}
}
