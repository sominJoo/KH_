package kh.java.email.model.vo;

import java.io.Serializable;

//객체 입출력 구현시 Serializable 필수
public class Email implements Serializable{
	private String email;

	@Override
	public String toString() {
		return "[email=" + email + "]";
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Email(String email) {
		super();
		this.email = email;
	}

	public Email() {
		super();
		// TODO Auto-generated constructor stub
	}

}
