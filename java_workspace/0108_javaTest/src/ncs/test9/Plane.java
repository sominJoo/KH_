package ncs.test9;

public abstract class Plane {
	public String planeName;
	public  int fuelSize;
	public Plane() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Plane(String planeName, int fuelSize) {
		super();
		this.planeName = planeName;
		this.fuelSize = fuelSize;
	}
	
	/**
	 * 주유 method
	 */
	public void refuel(int fuel) {
		fuelSize += fuel;
	}
	
	/**
	 * 운항 추상 method
	 */
	public abstract void flight(int distance);

}
