package com.kh.spring.tv.model.vo;

public class LgRemoteControl implements RemoteControl {

	@Override
	public void changeChannel(int no) {
		// TODO Auto-generated method stub
		System.out.println("LgTv Channel " +no+"로 변경");

	}

}
