package com.oop.constructor;

import java.util.Date;

public class Run {

	public static void main(String[] args) {
		/*
		//1. 기본 생성자  + setter,getter 사용
		User u = new User();
		u.setUserId("djjeijf");
		u.setPassword("ddjfjd");
		u.setRegDate(new Date());
		u.printUser();
		System.out.println();
		
		//2. 파라미터 생성자
		User u1 = new User("신사임당" , "루루룰ㄹ", new Date());
		u1.printUser();
		*/
		
		
		Employee e = new Employee();
		e.setEmpNo(1222);
		e.setName("주소민");
		e.setGender('여');
		e.setPhone("09103044444");
		e.printEmployee();
		
		Employee e1 = new Employee(3333,"홍길동",'남',"010-7777-7777");
		e1.printEmployee();
		
		Employee e2 = new Employee(5454,"유관순",'여',"010-3131-3131","영업부",3000000,0.15);
		e2.printEmployee();
	}

}
