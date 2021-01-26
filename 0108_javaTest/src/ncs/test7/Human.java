package ncs.test7;

public class Human {
	public String name;
	public int age;
	public int height;
	public int weight;
	
	
	public Human() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Human(String name, int age, int height, int weight) {
		super();
		this.name = name;
		this.age = age;
		this.height = height;
		this.weight = weight;
	}
	@Override
	public String toString() {
		return name + "\t" + age + "\t"  + height + "\t"  + weight + "\t" ;
	}
	
	
	
}
