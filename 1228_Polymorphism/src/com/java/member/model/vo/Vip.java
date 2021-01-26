package com.java.member.model.vo;

public class Vip  extends Member{
	@Override
	public double getPlusPoint() {
		return getPoint()*0.10;
	}
}
