package kh.java.oop.student;

public class StudentMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//Stuendt s => 객체 선언
		//new Student(); => 선언된 객체를 메모리에 할당
		Student s = new Student();
		s.name ="홍길동";
		s.point =90;
		s.printStudentInfo();
		
		Speaker s1 = new Speaker();
		s1.brand = "JBL";
		s1.color = "yellow";
		s1.volume = 5;
		
		s1.volumeUp();
		System.out.println(s1.info());
	}
}
