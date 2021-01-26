package com.collection.map.student;

public class Student {
	private int sNo;
	private String sName;
	private int kor, eng, math, sum;
	private double avg;
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student(int sNo, String sName, int kor, int eng, int math) {
		super();
		this.sNo = sNo;
		this.sName = sName;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
		this.sum = kor+eng+math;
		this.avg = sum/3;
	}
	@Override
	public String toString() {
		return "sNo=" + sNo + ", sName=" + sName + ", kor=" + kor + ", eng=" + eng + ", math=" + math
				+ ", sum=" + sum + ", avg=" + avg;
	}
	
	public int getsNo() {
		return sNo;
	}
	public void setsNo(int sNo) {
		this.sNo = sNo;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	public double getAvg() {
		return avg;
	}
	public void setAvg(double avg) {
		this.avg = avg;
	}
	
}
