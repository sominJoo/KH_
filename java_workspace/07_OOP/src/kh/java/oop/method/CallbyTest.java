package kh.java.oop.method;


/**
 * 
 * call by value : 값 전달(기본형)
 * call by reference : 주소값 전달(참조형)
 */
public class CallbyTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int a =10;
		int[] arr= {1,2,3,4,5};
		CallbyTest c= new CallbyTest();
		//갑전달(call by value)
		c.test1(a);
		
		//참조형(call by reference)
		c.test2(arr);
		System.out.println(arr[0]);
		
		//참조형이지만 값전달처럼 행동함
		String s = "안녕";
		c.test3(s);
		System.out.println(s);	
		
		
	}

	private void test3(String str) {
		// TODO Auto-generated method stub
		str ="잘가";
	}

	private void test2(int[] arr) {
		// TODO Auto-generated method stub
		arr[0] *= 100;
	}

	private void test1(int a) {
		// TODO Auto-generated method stub
		System.out.println(a);
	}

}
