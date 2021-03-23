package kh.java.io.byte_.system;

import java.util.Calendar;
import java.io.Serializable;

/**
 * 직력화 -  Serializable
 * 객체 입출력 스트림에서 사용되어질 객체는 반드시 Serializable 구현해야한다.
 * 그렇지 않은면, NotSerializableException을 발생
 *
 */
public class User implements Serializable{
	private String id;
	//transient - 객체 입출력 스트립에서 해당 값을 전송하지 않는다.(ex. 민감한 정보)(코드에는 있지만 메모리에 따로 저장하지 않는다.)=> 프로그램끼리 객체를 주고받을때 사용
	private transient String password;
	private String name;
	private Calendar regDate;
	
	public User()  {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String id, String password, String name, Calendar regDate) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.regDate = regDate;
	}
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Calendar getRegDate() {
		return regDate;
	}
	public void setRegDate(Calendar regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", password=" + password + ", name=" + name + ", regDate=" + regDate + "]";
	}
	
	
}
