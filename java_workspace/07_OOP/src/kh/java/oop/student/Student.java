package kh.java.oop.student;


/**
 * class -> 객체(object(개념), instance(메모리조작))
 * 클래스를 프로그램이 지향하는 바에 따라 설계하는 것 - 추상화
 */
public class Student {
	//field : 클래스 영역에 작성
	//- 속성, 정적 data
	String name;
	int point ;
	
	//method - 학생 객체 기능, 동적
	public void printStudentInfo() {
		//method에서 field를 참조할 수 있다.
		System.out.println("이름 : "+ name);
		System.out.println("점수 : "+ point);	
	}
}
