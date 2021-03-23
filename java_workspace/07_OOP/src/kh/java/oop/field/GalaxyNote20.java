package kh.java.oop.field;


/**
 * 프로그램 
 * MAIN 시작 -------------------------------------> main 끝
 * 
 * 지역변수 : 				메소드 호출 시------> 메소드 리턴
 * 멤버변수 :			 객체 생성시 -------------->객체소멸
 * 클래스 변수 : 프로그램 시작시 ------------------------> 프로그램 종료
 */
public class GalaxyNote20 {
	private String owner;
	private String phoneNumber;
	
	//공유목적 : 모든 객체가 공유할 값.(다른 객체에서도 접근 가능)
	public static final int WIDTH = 10;
	
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	//매개변수도 하나의 지역변수
	public void heyBix(String r) {
		//지역변수 : 접근제한자, static 키워드 사용불가
		int a =10;
	}
}
