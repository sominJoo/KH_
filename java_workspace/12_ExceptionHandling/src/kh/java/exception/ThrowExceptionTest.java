package kh.java.exception;

import java.util.Scanner;

public class ThrowExceptionTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ThrowExceptionTest t= new ThrowExceptionTest();
		t.test2();
	}
	
	/*
	 * 성인인증해야 가능한 게임
	 * 1. 성인인증
	 * 2. 성인 확인 => 게임시작
	 * 3. 아니면 돌려보냄
	 */
	public void test1() {
		boolean isAdult = checkAge();
		if(!isAdult) {
			System.out.println("성인아님 돌아가라");
			return;
		}
		else {
			System.out.println("성인 고스톱 게임 시작");
		}
	}
	public boolean checkAge() {
		boolean adult = false;
		int age=0;
		try {
			Scanner sc = new Scanner(System.in);
			System.out.println("나이 입력 : ");
			age = sc.nextInt();
			if(age>19)
				adult = true;
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return adult;
	}
	
	public void test2() {
		try {
			checkAgeThrow();
		}catch(Exception e) {
			e.printStackTrace();
			return;
		}
	}
	/**
	 * 성인 게임 - throw로 예외처리
	 */
	public void checkAgeThrow() throws UnderAgeException{
		Scanner sc = new Scanner(System.in);
		System.out.println("나이 입력 : ");
		int age = sc.nextInt();
		if(age <20)
			//직접 오류를 제어
			throw new UnderAgeException(String.valueOf(age));
	}

}
