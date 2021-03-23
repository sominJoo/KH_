package kh.java.nested.loop;

import java.util.Scanner;

public class NestedLoopTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		NestedLoopTest n = new NestedLoopTest();
//		n.test1();
//		n.test2();
//		n.test3();
//		n.test4();
//		n.test5();
//		n.test7();
		n.test8();
	}

	private void test1() {
		// TODO Auto-generated method stub
		for(int i =0; i<3; i++) {
			for(int j = 0; j< 5 ; j++) {
				System.out.print('★');
			}
			System.out.println();
		}
	}
	public void test2() {
		Scanner sc = new Scanner(System.in);
		System.out.print("행을 입력하세요 : ");
		int row = sc.nextInt();

		System.out.print("열을 입력하세요 : ");
		int column = sc.nextInt();
		
		for(int i =0; i<row; i++) {
			for(int j = 0; j< column ; j++) {
				System.out.print('★');
			}
			System.out.println();
		}
		
	}
	
	public void test3() {
		Scanner sc = new Scanner(System.in);
		System.out.print("행을 입력하세요 : ");
		int row = sc.nextInt();

		System.out.print("열을 입력하세요 : ");
		int column = sc.nextInt();
		
		for(int i =0; i<row; i++) {
			for(int j = 0; j< column ; j++) {
				if(j ==0)	System.out.print('☆');
				System.out.print('★');
			}			
			System.out.println();
		}
	}
	
	public void test4() {
		for(int i =2; i<=9; i++) {
			System.out.println("--- "+i+"단 ---");
			for(int j = 1; j<=9 ; j++) {
				System.out.println(i+" x "+j +" = " +(i*j));
			}			
			System.out.println();
		}
	}
	
	/**
	 * label있는 break문
	 */
	public void test5() {
		outer :
		for(int i =2; i<=100; i++) {
			System.out.println("--- "+i+"단 ---");
			for(int j = 1; j<=9 ; j++) {
				if(i*j > 300)
					break outer;
				System.out.println(i+" x "+j +" = " +(i*j));
			}			
			System.out.println();
		}
	}
	
	public void test7() {
		for(int i =0; i<5; i++) {
			System.out.print(i+ ":");
			for(int j = 0; j< i+1 ; j++) {
				System.out.print('★');
			}
			System.out.println();
		}
	}
	
	public void test8() {
		for(int i =0; i<5; i++) {
			for(int j = 0; j<3 ; j++) {
				System.out.print('★');
				if(i%2 != 0) break;
			}
			System.out.println();
		}
	}
}
