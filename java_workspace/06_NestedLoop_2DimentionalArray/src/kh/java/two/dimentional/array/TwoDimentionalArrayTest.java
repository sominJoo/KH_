package kh.java.two.dimentional.array;

public class TwoDimentionalArrayTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		TwoDimentionalArrayTest t= new TwoDimentionalArrayTest();
//		t.test1();
		t.test3();
	}

	/**
	 * 이차원 배열
	 */
	private void test1() {
		// TODO Auto-generated method stub
		int[][] arr = new int[2][3];
		arr[0][0] =1;
		arr[0][1] =2;
		arr[0][2] =3;
		arr[1][0] =4;
		arr[1][1] =5;
		arr[1][2] =6;
		
		for(int i=0 ; i<arr.length ; i++) {
			for(int j= 0 ; j< arr[i].length ; j++)	//arr i번째 행에 열의 길이
				System.out.print(arr[i][j]);
			System.out.println();
		}
	}

	public void test3() {
		char[][] chArr = new char[2][26];
		char ch= 'A';
		
		for(int i = 0; i <chArr.length;i++) {
			for(int j = 0 ; j< chArr[i].length;j++) {
				if(ch> 'Z' && ch< 'a') 	continue;
				chArr[i][j] = ch++;
				System.out.print(chArr[i][j]);
			}
			System.out.println();
		}
	}
}
