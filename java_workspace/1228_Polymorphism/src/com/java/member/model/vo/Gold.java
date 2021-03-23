package com.java.member.model.vo;

public class Gold  extends Member{
	@Override
	public double getPlusPoint() {
		return getPoint()*0.05;
	}
}
