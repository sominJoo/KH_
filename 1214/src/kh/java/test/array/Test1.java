package kh.java.test.array;

public class Test1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Test1 t= new Test1();
		t.test();
	}
	
	public void test() {
		int[] arr = new int[100];
		for(int i =0 ; i<arr.length; i++) {
			arr[i] = i+1;
			System.out.println(arr[i]);
		}
	}

}
