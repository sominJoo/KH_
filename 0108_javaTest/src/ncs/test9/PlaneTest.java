package ncs.test9;

public class PlaneTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Airplane a = new Airplane("L747",1000);
		Cargoplane c= new  Cargoplane("C40",1000);
		
		PlaneTest p =new PlaneTest();
		p.printInfo(a, c);

		System.out.println("\n=====100 운항 후=====");
		a.flight(100);
		c.flight(100);
		p.printInfo(a, c);
		
		System.out.println("\n=====200 주유 후=====");
		a.refuel(200);
		c.refuel(200);
		p.printInfo(a, c);
	}
	public void printInfo(Airplane a, Cargoplane c) {
		System.out.println("Plane\tfuelSize");
		System.out.println("---------------");
		System.out.println(a.toString());
		System.out.println(c.toString());
	}

}
