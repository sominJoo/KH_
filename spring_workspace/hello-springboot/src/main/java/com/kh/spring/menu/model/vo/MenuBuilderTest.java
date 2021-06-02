package com.kh.spring.menu.model.vo;

public class MenuBuilderTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MenuBuilderTest mt = new MenuBuilderTest();
		mt.test1();
	}

	private void test1() {
		// Menu 객체 사용법
		// 1. 기본생성자 + setter
		// 2. 파라미터 생성자
		// 3. Builder 패턴
		Menu menu = Menu.builder()
			.id(1)
			.name("도토리묵")
			.restaurant("다람쥐네")
			.price(8000)
			.build();//객체 완성
		System.out.println("menu = "+ menu);
	}
	
}
