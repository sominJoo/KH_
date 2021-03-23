package kh.java.array;

public class ArrayTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayTest a = new ArrayTest();
//		a.test();
//		a.test2();
		a.test3();
	}
	
	/**
	 * 배열 : 동일 자료형의 값이 여러개인경우
	 */
	public void test() {
		//1. 배열 선언
		//2. 배열 할당 : 배열 길이 지정
		//3. 배열 각 번지에 값 대입
		
		//초기값 int 0. double 0.0, char ' ', boolean false
		int[] arr = {80,70,90,43,75};
		int total =0;
		for(int i = 0 ; i <arr.length; i++) {
			total += arr[i];
		}
		System.out.println("총합 = "+total);
		double avg = (double)total/arr.length;
		System.out.println("평균 = "+avg);
		
		double[] dArr= new double[3];
		char[] chArr = new char[] {'a','b','c'};
		
	}

	public void test2() {
		char[] arr = new char[26];
		for(int i = 0; i< arr.length;i++) {
			arr[i] = (char)('a'+i);
			System.out.println(arr[i]);
		}
	}
	 public void test3() {
		 //new할때마다 객체를 할당(heap 공간을 할당한다.)  ==> hashcode 값이 다르면 다른 객체
		 //hashcod : 객체 주소에 접근하는 key값
		 //참조형 변수 => heap 메모리의 주소값을 가르킴 
		 //참조형 변수 defualt : null
		 int[] arr = new int[10];
		 System.out.println(arr.length);
		 System.out.println(arr.hashCode());
		 System.out.println(arr.toString());
		 
		 
		 arr = new int[7];
		 System.out.println(arr.length);
		 System.out.println(arr.hashCode());
		 
		 
		 arr = null;// 삭제/ null은 힙의 주소를 가르키지 않는다.
		 
	 }

}
