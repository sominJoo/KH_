package kh.java.oop.student;

public class Speaker {
	//field
	String brand;
	String color;
	int volume;
	int max;
	
	public void volumeUp() {
		volume++;
	}
	public void volumeDown() {
		volume--;
	}
	public String info() {
		return (brand +", "+color+", "+volume);
	}

}
