package kh.java.object.array.person;

import java.util.Scanner;


/**
 * 연관관계 - PersonManager은 Person을 field로써 참조한다.
 * 	PersonManager ─────────────> Person
 * @author ddomin
 *
 */
public class PersonManger {
	private Person[] arr = new Person[3];
	private Scanner sc = new  Scanner(System.in);
	
	/**
	 * Person 정보 입력 메소드
	 */
	public void inputPerson() {
		for(int i =0; i<arr.length ; i++) {
			System.out.print((i+1)+"번째 사용자 이름 : ");
			String name = sc.nextLine();
			System.out.print((i+1)+"번째 사용자 나이 : ");
			int age = sc.nextInt();
			sc.nextLine();
			arr[i]= new Person(name,age);
		}
	}
	
	/**
	 * Person 정보 출력 메소드
	 */
	public void printPerson() {
		for(Person p : arr)
			p.printPerson();
	}
}
