package com.kh.spring.tv.model.vo;

public class SamsungRemoteControl implements RemoteControl {

	@Override
	public void changeChannel(int no) {
		// TODO Auto-generated method stub
		System.out.println("삼성 채널 "+ no+" 로 변경");
	}

}
