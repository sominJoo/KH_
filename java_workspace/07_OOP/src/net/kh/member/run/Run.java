package net.kh.member.run;

import net.kh.member.model.Member;

public class Run {
	
	/**
	 * 의존관계
	 * Run ------> Member
	 * 사용클래스 ----> 피사용클래스
	 * 
	 * 
	 * 
	 **/
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Member m = new Member();
		m.setMemberId("wnthals0562");
		m.setMemberPwd("asdg3244");
		m.setMemberName("주소민");
		
		m.setAge(23);
		m.setGender('F');
		m.setPhone("01045276649");
		m.setEmail("thals0613@naver.com");
	}
	

}
