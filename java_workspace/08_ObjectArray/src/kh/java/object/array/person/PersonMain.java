package kh.java.object.array.person;

import java.util.ArrayList;
import java.util.Scanner;

public class PersonMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		PersonMain pm = new PersonMain();
//		pm.test1();
//		pm.test2();
		pm.test3();
	}
	private void test3() {
		// TODO Auto-generated method stub
		Person[] arr = new Person[3];
		Scanner sc= new Scanner(System.in);
		
		for(int i =0; i<arr.length ; i++) {
			System.out.print((i+1)+"번째 사용자 이름 : ");
			String name = sc.nextLine();
			System.out.print((i+1)+"번째 사용자 나이 : ");
			int age = sc.nextInt();
			sc.nextLine();
			arr[i]= new Person(name,age);
		}
		for(Person p : arr)
			p.printPerson();
	}
	
	/**
	 * Person객체를 배열로 관리
	 */
	public void test1() {
		Person[] arr = new Person[3];
		arr[0] = new Person("홍길동",34);
		arr[1] = new Person("신사임당",48);
		arr[2] = new Person("세종대왕",67);
		
//		for(int i=0; i<arr.length ;i++) {
//			Person p = arr[i];
//			p.printPerson();
//		}
//		for each문
		for(Person p : arr) {
			p.printPerson();
		}
	}
	

	/**
	 * 초기화 객체 배열 선언
	 */
	private void test2() {
		// TODO Auto-generated method stub
		Person[] arr = {
				new Person("홍길동",34),
				new Person("신사임당",48),
				new Person("세종대왕",67)
		};
		for(Person p : arr) {
			p.printPerson();
		}
	}


}
