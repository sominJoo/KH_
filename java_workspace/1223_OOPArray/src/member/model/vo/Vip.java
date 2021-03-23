package member.model.vo;

/**
 * vip 등급 관련 데이터
 */
public class Vip {
	private String name;
	private String grade;
	private int point;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public double getPulsPoint() {
		return point*0.1;
	}
	
	public Vip(String name, String grade, int point) {
		this.name = name;
		this.grade= grade;
		this.point = point;
	}
	
}
