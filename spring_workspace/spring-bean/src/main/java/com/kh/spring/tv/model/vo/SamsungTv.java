package com.kh.spring.tv.model.vo;

public class SamsungTv implements Tv {
	private RemoteControl remocon;

	public SamsungTv(RemoteControl remocon) {
		
		System.out.println("SamsungTv 객체 생성");
		this.remocon = remocon;
		
	}

	@Override
	public void powerOn() {
		// TODO Auto-generated method stub
		System.out.println("SamsungTv 전원 on");
	}

	public void changeChannel(int no) {
		remocon.changeChannel(no);
	}
}
