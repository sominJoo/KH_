package member.model.vo;

import java.sql.Date;


/**
 * VO객체는 Member테이블 한 행과 대응
 */
public class Member {
	private String memberId;
	private String password;
	private String memberName;
	private String gender;		//M F
	private String email;
	private int age;
	private String phone;
	private String address;
	private String hobby;
	private Date enrollDate;	//java.sql.date 라이브러리 이용
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Member(String memberId, String password, String memberName, String gender, String email, int age,
			String phone, String address, String hobby, Date enrollDate) {
		super();
		this.memberId = memberId;
		this.password = password;
		this.memberName = memberName;
		this.gender = gender;
		this.email = email;
		this.age = age;
		this.phone = phone;
		this.address = address;
		this.hobby = hobby;
		this.enrollDate = enrollDate;
	}
	
	
	@Override
	public String toString() {
		return "Member [아이디=" + memberId + ", 비밀번호=" + password + ", 이름=" + memberName + ", 성별="
				+ gender + ", 이메일=" + email + ", 나이=" + age + ", 번호=" + phone + ", 주소=" + address
				+ ", 취미=" + hobby + ", 가입일=" + enrollDate + "]";
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	
	
}
