package kh.java.two.dimentional.array;

import java.util.Scanner;

public class JaggedArrayTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		JaggedArrayTest j= new JaggedArrayTest();
//		j.test1();
		j.test2();
	}
	
	/**
	 * 가변 배열 - 참조의 참조가 
	 * int[][] arr = new int [3][]
	 */
	private void test1() {
		// TODO Auto-generated method stub
		int[][] arr = new int [3][];
		
		arr[0] = new int[10];
		arr[1] = new int[3];
		arr[2] = new int[7];
		
		for(int i =0; i<arr.length ; i++) {
			System.out.println(arr[i]);
		}
	}
	private void test2() {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		String[][] str = new String[3][];
		str[0] = new String[5];
		str[1] = new String[2];
		str[2] = new String[3];
		
		//입력
		for(int i =0; i<str.length ; i++) {
			switch(i) {
			case 0 : System.out.print("의류");  break;
			case 1 : System.out.print("식료품");  break;
			case 2 : System.out.print("기타");  break;
			}
			System.out.println(str[i].length +"가지 입력하세요");
			for(int j=0; j<str[i].length ; j++) {
				System.out.print((j +1) +" : ");
				str[i][j] = sc.next();
			}
		}		
		
		//출력
		System.out.println("\n=========목록=========");
		for(int i =0; i<str.length ; i++) {
			for(int j=0; j<str[i].length ; j++)
				System.out.print(str[i][j] + " ");
			System.out.println();
		}
	}

}
