package kh.java.array.sort;

public class SortingTest {

	/**
	 * 배열 정렬
	 * 알고리즘공부 단골주제 - 검색, 정렬, 자료구조
	 * - 순차, 선택, 버블, 삽입, 합병, 퀵, 팀 정렬
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SortingTest s = new SortingTest();
//		s.test();
		s.test4();
	}
	//자리바꿈
	public void test() {
		int a= 10;
		int b =7;
		
		int temp = a ;
		a = b;
		b =temp;
	}
	
	public void test2() {
		int[] arr = {2,1,3};
		int temp =arr[0];
		arr[0] =  arr[1];
		arr[1] = temp;
	}
	
	//순차정렬 -순차 정렬은 맨 앞에서부터 제일 작은 원소를 배치하게 만들어 나가는 알고리즘
	public void test3() {
		int[] arr = {4,3,0,2,1};
		
		//i = 0,1,2,3
		for(int i=0 ; i<arr.length -1;i++) {
			for(int j = i+1 ;j<arr.length;j++) {
				//앞 수가 더 클 경우
				if(arr[i] > arr[j])
					swap(arr, i,j);
				print(arr,i);
			}
		}
	}
	
	public void test4() {
		int[] arr = {4,3,0,2,1};
		
		//i = 0,1,2,3
		for(int i=0 ; i<arr.length -1;i++) {
			//최소값을 가리킬 인덱스
			int min = i;
			for(int j = i+1 ;j<arr.length;j++) {
				//앞 수가 더 클 경우
				if(arr[min] > arr[j])
					min =j;
				print(arr,i);
			}
			swap(arr,min,i);
		}
		print(arr,4);
	}
	
	private void print(int[] arr, int i) {
		// TODO Auto-generated method stub
		System.out.println( i+ " : "+arr[0]+arr[1]+arr[2]+arr[3]+arr[4]);
	}
	private void swap(int[] arr, int i, int j) {
		// TODO Auto-generated method stub
		int temp;
		temp = arr[i];
		arr[i] = arr[j];
		arr[j] = temp;
	}
}
