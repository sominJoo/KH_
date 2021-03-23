package kh.java.array;

public class ArrayCopyTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayCopyTest a= new ArrayCopyTest();
//		a.test();
//		a.test2();
		a.test4();
	}
	
	/**
	 * 1. 얕은 복사 : 배열 변수(주소값)의 복사
	 * 		pc의 바로가기 아이콘
	 * 
	 * 2. 깊은 복사 : 배열 객체의 값 복사
	 */
	public void test() {
		int[] arr1 = {1,2,3};
		//얕은 복사(주소값만 복사, 같은 배열을 공유)
		int[] arr2 = arr1;
		for(int i =0; i<arr1.length;i++) {
			System.out.printf("%d---------%d\n",arr1[i], arr2[i]);
		}
		
		//같은 주소를 가짐
		System.out.println(arr1.hashCode());
		System.out.println(arr2.hashCode());
	}
	
	
	/**
	 * 깊은복사
	 */
	public void test2() {
		int[] arr1 = {1,2,3};
		//깊은 복사(반복문을 통해 직접 갑 입력)
		int[] arr2 = new int[arr1.length];
		
		for (int i = 0 ;i<arr1.length ; i++) {
			arr2[i]= arr1[i];
			System.out.printf("%d---------%d\n",arr1[i], arr2[i]);
		}
		arr1[1] *= 100;
		
		//다른 주소를 가짐
		System.out.println(arr1.hashCode());
		System.out.println(arr2.hashCode());
		
	
		printArr(arr1);//주소값 전달
	}
	public void printArr(int[] arr) {
		for(int i = 0; i<arr.length ;i++) {
			System.out.println(arr[i]+ " ");
		}
	}
	
	/**
	 * 깊은 복사: clone()l
	 */
	public void test4() {
		double[] arr1 = new double[] {0.123, 0.456,0.789};
		double[] arr2=arr1.clone();
		arr1[1] = 0.567;
		
		for (int i = 0 ;i<arr1.length ; i++) {
			System.out.printf("%.3f---------%.3f\n",arr1[i], arr2[i]);
		}
	}

}
