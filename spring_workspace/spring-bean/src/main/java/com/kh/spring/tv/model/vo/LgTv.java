package com.kh.spring.tv.model.vo;

public class LgTv implements Tv {
	
	//의존객체 : 객체할당을 하지 않아도 bean에서 의존 주입을 받아서 nullpointexception이 띄지않음
	private RemoteControl remocon;
	
	
	/**
	 * bean > property
	 * -setter을 이용해서 의존주입한다.(DI)
	 * @param remocon
	 */
	public void setRemocon(RemoteControl remocon) {
		System.out.println("setRemocon");
		this.remocon =remocon;
	}
	
	
	/**
	 * bean > constructor-arg
	 * 생성자를 이용한 의존주입(DI)
	 * @param remocon
	 */
	public LgTv(RemoteControl remocon) {
		System.out.println("lgTv 객체 생성"+remocon);
		this.remocon =remocon;
	}

	@Override
	public void powerOn() {
		// TODO Auto-generated method stub
		System.out.println("lgTv 전원을 켰습니다.");
		
	}
	public void changeChannel(int no) {
		remocon.changeChannel(no);
	}
}
