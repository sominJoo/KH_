package ncs.test10;

public class Company {
	public static void main(String[] args) {
		Employee[] employee = new Employee[2];
		Secretary se = new  Secretary("Hilery",1,"secretary",800);
		Sales sa = new Sales("Clinten",2,"sales",1200);
		employee[0] = se;
		employee[1] = sa;
		
		System.out.println("name\t\tdepartment\tsalary");
		System.out.println("-----------------------------------------");
		for(Employee e: employee) {
			System.out.printf("%s\t\t%s\t%d\n",e.getName(),e.getDepartment(),e.getSalary());
		}
		System.out.println("\n==========인센티브 100 지급  후=========== \n");
		
		se.incentive(100);
		sa.incentive(100);
		 
		
		System.out.println("name\t\tdepartment\tsalary\ttax");
		System.out.println("-----------------------------------------");
		for(Employee e: employee) {
			System.out.printf("%s\t\t%s\t%d\t%.1f\n",e.getName(),e.getDepartment(),e.getSalary(),e.tax());
		}
		
	}
}