package kh.java.object.array.student;

public class StudentVO {
	private int studentNo;
	private String name;
	private String phone;
	public int getStudentNo() {
		return studentNo;
	}
	public void setStudentNo(int studentNo) {
		this.studentNo = studentNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public StudentVO(int num,String name,String phone) {
		this.studentNo = num;
		this.name = name;
		this.phone = phone;
	}
	
	public String printInfo() {
		String str = "학번 "+studentNo+", 이름 "+name+", 전화번호"+phone;
		return str;
	}
}
