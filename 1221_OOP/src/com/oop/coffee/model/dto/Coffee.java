package com.oop.coffee.model.dto;

public class Coffee {
	private String origin;
	private String location;
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	public Coffee(String origin, String location) {
		this.origin = origin;
		this.location = location;
	}
	
	public void printInfo() {
		System.out.println(origin +"\t"+ location);
	}
}
