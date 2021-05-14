package com.kh.spring.user;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.kh.spring.user.controller.UserController;

public class UserMvcMain {
	public static void  main(String[] args) {
		
		String configLocation ="/application-context-with-annotation.xml";
		ApplicationContext context = new ClassPathXmlApplicationContext(configLocation);
		
		System.out.println("-------------------spring-contanier bean 초기화 완료-----------------------");
		
		UserController controller = context.getBean(UserController.class);
		
		controller.getUserDetail("honggd");
		
	}
}
