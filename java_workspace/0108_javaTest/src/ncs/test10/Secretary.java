package ncs.test10;

public class Secretary extends Employee implements Bonus{

	public Secretary() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Secretary(String name, int number, String department, int salary) {
		super(name, number, department, salary);
		// TODO Auto-generated constructor stub
	}

	
	//세금(Employee 추상클래스 오버라이딩)
	@Override
	public double tax() {
		return salary*0.10;
	}

	//인센티브(Bonus 인터페이스 오버라이딩)
	@Override
	public void incentive(int pay) {
		// TODO Auto-generated method stub
		salary += (pay*0.8);
	}
	
	

}
