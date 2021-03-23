package ncs.test9;

public class Cargoplane extends Plane{

	@Override
	public void flight(int distance) {
		// TODO Auto-generated method stub
		int refuel  = distance*5;
		fuelSize -= refuel;
	}

	public Cargoplane() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Cargoplane(String planeName, int fuelSize) {
		super(planeName, fuelSize);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return planeName + "\t" + fuelSize ;
	}

}
