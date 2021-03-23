package ncs.test9;

public class Airplane extends Plane{

	@Override
	public void flight(int distance) {
		// TODO Auto-generated method stub
		int refuel  = distance*3;
		fuelSize -= refuel;
	}

	public Airplane() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Airplane(String planeName, int fuelSize) {
		super(planeName, fuelSize);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return planeName + "\t" + fuelSize ;
	}

}
