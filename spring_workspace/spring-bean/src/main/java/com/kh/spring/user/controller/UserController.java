package com.kh.spring.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.kh.spring.user.model.service.UserService;

//@Component interface에 붙이 않고 구현객체에 붙임 
@Component
@Scope("prototype")
@Lazy	//lazy - 와 동일
public class UserController {
	private UserService userService;

	
	/**
	 * @Autowired
	 * 1.field
	 */
	//@Autowired
	public void getUserDetail(String id) {
		userService.getUserDetail(id);
	}

	/**
	 * @Autowired
	 * 2. setter
	 */
	//@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	/**
	 * @Autowired
	 * 3. 생성자
	 */
	@Autowired
	public UserController(UserService userService) {
		this.userService = userService;
	}
}
