package ncs.test10;

public class Sales extends Employee implements Bonus{

	public Sales() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Sales(String name, int number, String department, int salary) {
		super(name, number, department, salary);
		// TODO Auto-generated constructor stub
	}

	//인센티브
	@Override
	public void incentive(int pay) {
		// TODO Auto-generated method stub
		salary += (pay*1.2);
	}

	@Override
	public double tax() {
		// TODO Auto-generated method stub
		return salary*0.13;
	}

}
