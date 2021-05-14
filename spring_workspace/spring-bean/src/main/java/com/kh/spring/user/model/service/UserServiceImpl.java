package com.kh.spring.user.model.service;

import org.springframework.stereotype.Component;

@Component
public class UserServiceImpl implements UserService {

	@Override
	public void getUserDetail(String id) {
		// TODO Auto-generated method stub
		System.out.println("사용자 "+ id+ " detail!!");
	}

}
