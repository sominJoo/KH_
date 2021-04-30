package com.kh.person.model.vo;

public class Person {
	private String id;
	private String name;
	private char gender;
	private int age;
	private boolean married;
	public Person() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Person(String id, String name, char gender, int age, boolean married) {
		super();
		this.id = id;
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.married = married;
	}
	@Override
	public String toString() {
		return "Person [id=" + id + ", name=" + name + ", gender=" + gender + ", age=" + age + ", married=" + married
				+ "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public char getGender() {
		return gender;
	}
	public void setGender(char gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public boolean isMarried() {
		return married;
	}
	public void setMarried(boolean married) {
		this.married = married;
	}
	
}
