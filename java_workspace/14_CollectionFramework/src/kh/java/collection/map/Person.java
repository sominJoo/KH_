package kh.java.collection.map;

import java.util.Objects;

public class Person {
	private String name;

	public Person(String name) {
		super();
		this.name = name;
	}

	public Person() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Person [name=" + name + "]";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public  int hashCode() {
		return Objects.hash(name);
	}
	@Override
	public boolean equals(Object o) {
		if(this == o ) return true;
		//전달받은 객채가 null값이거나 Person객체가 아니라면
		if(o == null || (o instanceof Person)) return false;
		
		Person other = (Person)o;
		if(name ==null) {
			if(other.name != null)
				return false;
		}
		else {
			if(!name.equals(other.name))
				return false;
		}
		return true;
	}
}
