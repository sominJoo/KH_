package kh.java.collection.list;

import java.util.Objects;

public class Student implements Comparable<Student>{
	private int no;
	private String name;
	
	
	public Student() {
	}
	public Student(int no, String name) {
		this.no = no;
		this.name = name;
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	@Override
	public String toString() {
		return "Student [no=" + no + ", name=" + name + "]";
	}
	@Override
	public int hashCode() {
		//hashCode 생성 메소드(jdk1.7)
		return Objects.hash(no,name);
	}
	/**
	 * 필드값이 동일하면 true가 나올수 있도록 재작성(no,name)
	 * 
	 * equals & hashcode 동시에 오버라이딩
	 * equals 결과가 true면 hashcode 결과도 동일해야함
	 */
	@Override
	public boolean equals(Object o) {
		//student 형변환 타입검사
		if(!(o instanceof Student))
			return false;
		
		Student other = (Student)o;
		if(no != other.no)
			return false;
		
		if(!name.equals(other.name))
			return false;
		
		return true;
	}
	
	/**
	 * 기본정렬 : 학번 오름차순
	 * 
	 * 양수 : 자리 바꿈
	 * 0
	 * 음수 : 자리바꿈
	 */
	@Override
	public int compareTo(Student o) {
		// TODO Auto-generated method stub
		return this.no - o.no;
	}
	
}
