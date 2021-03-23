package com.oop.constructor;

import java.util.Date;

/**
 * 생성자 constructor
 * new 연산자를 통해 호출되는 메소드.
 * 객체 생성시 마지막에 호출되어 객체 필드 초기화 처리 담당
 * 
 * 리턴타입 없고, 클래스 명과 동일.
 * 
 * -기본 생성자 :파라미터 생성자 없다면 jvm에서 자동 생성
 * 		 	: 파라미터 생성자가 있다면 자동 생성x. 직접 작성해야함.
 * -파라미터 생성자 : 필드값을 넘겨받아 한번에 값 세팅.
 * 
 * -기본생성자 필요 이유 :
 * 1. 상속 시 자식 클래스에서 부모클래스의 기본 생성자를 호출
 * 2. 자바 ee 스펙에 따라 사용자 객체 생성 시 내부적으로 호출
 * 3. 서버 프로그램을 만들때 자동적으로 기본생성자를 호출
 */
public class User {
	private String userId ;
	private String password ;
	private Date regDate;
	
	
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	

	/**
	 * 기본 생성자 : 파라미터 없음
	 */
	public User() {
		System.out.println("기본 생성자 사용");
	}
	
	/**
	 * 파라미터 생성자
	 * 다른 생성자를 호출해서 생성자 안 중복된 코드 제거(this() 사용)
	 * @param userId
	 * @param password
	 * @param regDate
	 */
	
	public User(String userId) {
		this.userId = userId;		
	}
	public User(String userId, String password) {
		this.userId = userId;
		this.password = password;
	}
	public User(String userId, String password, Date regDate) {
		this(userId, password);	//다른 생성자 호출
	//		this.userId = userId;
	//		this.password = password;
		this.regDate = regDate;
	}

	public void printUser() {
		System.out.println(userId+", " + password + ", " +regDate);
	}
}
