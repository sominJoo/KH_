package com.java.member.model.vo;

public class Silver extends Member{
	
	public double getPlusPoint() {
		return (getPoint()*0.02);
	}
	
}
