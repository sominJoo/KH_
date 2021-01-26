package member.model.vo;

/**
 * silver 등급 데이터
 */
public class Silver {
	private String name;
	private String grade;
	private double point;
	public Silver() {
		
	}
	public Silver(String name, String grade, double point) {
		this.name = name;
		this.grade = grade;
		this.point = point;
	}
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
	public double getPoint() {
		return point;
	}
	public void setPoint(double point) {
		this.point = point;
	}
	
	public double getPlusPoint() {
		return (point*0.02);
	}
}
