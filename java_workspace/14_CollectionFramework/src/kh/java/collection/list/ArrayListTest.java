package kh.java.collection.list;

import java.util.List;


import java.lang.reflect.InaccessibleObjectException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

public class ArrayListTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayListTest a = new ArrayListTest();
//		a.test0();
//		a.test4();
//		a.test5();
		a.test6();
		
	}

	/**
	 * 배열의 문제점
	 */
	public void test0() {
		// TODO Auto-generated method stub
		Student[] arr = new Student[3];
		arr[0] = new Student(1,"홍길동");
		arr[1] = new Student(2,"신사임당");
		arr[2] = new Student(3,"세종대왕");
		
		//1. 학생 추가 시 객체배열 재생성 필요 가능성. 메모리 공간 낭비 발생
		Student[] arr2 = new Student[10];
		System.arraycopy(arr, 0, arr2, 0, arr.length);  //배열 카피 필요
		
		arr2[3] = new Student(4,"장영실");
		arr2[4] = new Student(5,"이황");
				
		//2. 학생 삭제 시 인덱스 넘버를 알아야함. 데이터 중간의 빈자리가 없이 관리해야함
		arr2[2]=null;
		
		//배열 중간에 빈자리 발생하지 않도록 뒤에 배열 값을 한칸씩 가져와야한다. 마지막 값은 null처리
		arr2[2] = arr2[3];
		arr2[3] = arr2[4];
		arr2[4] = null;
		
		System.out.println(Arrays.toString(arr2));
	}
	
	public void test1() {
		ArrayList list1 = new ArrayList();
		Collection list3  = new ArrayList();
		
		//맨 마지막 요소 추가 : add
		list1.add("안녕");
		list1.add(new Student(1,"고주몽"));
		list1.add(123);
		
		//toString이 override 되어 있음.
		//중복 허용. 순서 유지
		System.out.println(list1);
		
		//삭제: remove
		list1.remove(2);
		
		//요소 갯수
		System.out.println(list1.size());
		
		//반복문 사용해서 요소 접근가능
		for(int i = 0; i<list1.size(); i++) {
			System.out.println(list1.get(i));
		}
	}
	
	public void test2() {
		List list = new ArrayList();
		list.add("안녕");
		list.add(123);
		Object e1 = list.get(0);
		Object e2 = list.get(1);
		
		//다형성 적용
		//String 타입변수 지정 : String 타입의 요소만 추가가능
		List<String> list2 = new ArrayList<String>();
		list2.add("안녕");
		
		//Wrapper Class(int불가. 참조형인 Integer로 사용해야함)
		List<Integer> list3 = new ArrayList<Integer>();
		
		
	}
	
	public void test3() {
		ArrayList<Student> list = new ArrayList<Student>();
		list.add(new Student(1,"홍길동"));
		list.add(new Student(2,"신사임당"));
		list.add(new Student(3,"세종대왕"));
		list.add(new Student(4,"장영실"));
		list.add(new Student(5,"이황"));
		System.out.println(list);
	}
	public void test4() {
		ArrayList<Integer> list = new ArrayList<Integer>();
		list.add(5);
		list.add(2);
		list.add(3);
		list.add(1);
		list.add(4);
		list.add(1,100);
		
		//동등객체로 삭제 : 객체가 가진 값이 동일한 객체
		list.remove(new Integer(100));		//=> 값이 100인것을 삭제해줌
		System.out.println(list);
		
		
		//매개인자 요소를 포함하고 있는가 : contains() => boolean
		System.out.println(list.contains(9));
		System.out.println("=========================");
		
		//매개인자 요소가 몇번지에 있는가 : indexof => int
		System.out.println(list.indexOf(9)); 	//요소 없을 시 -1 return
		System.out.println("=========================");
		
		//열람 : for, for-each, iterator방식
		//iterator : point와 같은 방식 
		Iterator<Integer> iter = list.iterator();
		while(iter.hasNext()) {
			Integer i = iter.next();
			System.out.print(i+" ");
		}
		System.out.println("\n=========================");
		
		//리스트 모든 요소 삭제
//		list.clear();
		
		//리스트가 비어있는가 : isEmpty() => boolean(비어있으면 true)
		System.out.println(list.isEmpty());
		
	}
	
	/**
	 * 정렬
	 * 1. comparable 인터페이스
	 *   - 기본정렬(한가지)클래스에서 구현. compareTo메소드 오버라이딩
	 * 2. Comparator 인터페이스
	 *   - 기본 정렬 외 추가적으로 정렬기준을 제시해야할때.
	 *   - 별도의 Comparator 구현 클래스를 작성(개수제한 없음)
	 *   - compare 메소드 오버라이딩
	 */
	public void test5() {
		List<String> list = new ArrayList<String>();
		list.add("허허허");
		list.add("나나나");
		list.add("가버려");
		list.add("다나가");
		
		System.out.println(list);
		System.out.println("========================");
		
		//정렬 메소드 호출 : Collection.sort();
		Collections.sort(list);//=> 기본 정렬기준(사전 등재순)에 따라 정렬함
		
		System.out.println(list);
		System.out.println("========================");
		
		
		//사전등재 역순 : 별도의 정렬객체를 만들어야함
		Comparator<String> comp = Collections.reverseOrder();
		Collections.sort(list,comp); //두번째 인자 : 정렬시 참고하는 인자
		System.out.println(list);
	}
	
	public void test6() {
		List<Student> list = new ArrayList<>();
		list.add(new Student(3,"세종대왕"));
		list.add(new Student(2,"신사임당"));
		list.add(new Student(5,"이황"));
		list.add(new Student(4,"장영실"));
		list.add(new Student(1,"홍길동"));
		
		
		//기본 정렬 : 학번 오름차순
//		Collections.sort(list) => Student가 기본 정렬 메소드를 가지고 있지 않아 오류가 발생. Student에 기본 정렬 메소드 implements 필요
		Collections.sort(list);
		System.out.println(list);
		
		
		//추가적 정렬 기준 생성 
		//1. 이름오름차순 
		Comparator<Student> comp = new StudentNameAscending();
		Collections.sort(list,comp);
		System.out.println(list);
	
	}
	
	public void test7() {
		List<Student> list = new ArrayList<>();
		list.add(new Student(3,"세종대왕"));
		list.add(new Student(2,"신사임당"));
		list.add(new Student(5,"이황"));
		list.add(new Student(4,"장영실"));
		list.add(new Student(1,"홍길동"));
		
		for(Student s : list) {
			if(s.getNo() == 5)
				list.remove(s); //=> 리스트 순회중 삭제하면 오류 발생
		}
		
		int idx = -1;
		for(Student s : list) {
			if(s.getNo() ==5)
				idx = list.indexOf(s);
		}
		list.remove(idx);
	}
}
