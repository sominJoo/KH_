package kh.java.polymorphism.animal;

public class AnimalMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AnimalMain a = new AnimalMain();
		//객체 활용
//		a.test1();
		
		//다형성 활용
		//1.매개변수 선언부
//		a.test2();
		
		//2.리턴값 처리
//		a.test3();
		
		//추상화
//		a.test5();
		
		//인터페이스
		a.test8();
	}
	
	/**
	 * 부모타입 배열에 자식객체를 담을 수 있다.
	 */
	public void test1() {
		Animal[] arr = new Animal[3];
		arr[0] = new Cat();
		arr[1] = new Dog();
//		arr[2] = new Animal();
		
		
		for(Animal an : arr)
		{
			//instanceof 해당 타입의 객체인 경우 true 리턴
			an.say();
			if(an instanceof Cat)
				((Cat)an).punch();
			else if(an instanceof Dog)
				((Dog)an).kick();	//(cat으로 다운캐스팅된 후 Dog로 캐스팅 할 수 없다)
			
		}
	}
	
	/**
	 * 매개변수 선언부에서 다형성 활용
	 */
	public void test2() {
		Cat c= new Cat();
		Dog d = new Dog();
		
		attack(c);
		attack(d);
	}

	private void attack(Animal a) {
		// TODO Auto-generated method stub
		if(a instanceof Cat)
			((Cat) a).punch();
		else if(a instanceof Dog)
			((Dog)a).kick();
	}
	
	/**
	 * 리턴값 처리
	 */
	public void test3() {
		Animal c = makeCat();
		Animal d = makeDog();
		
		Animal[] arr = new Animal[100];
		for(int i =0; i<arr.length ; i++) {
			if(i%2==0)
				arr[i] = makeDog();
			else 
				arr[i] = makeCat();
		}
		for(Animal a : arr)
			attack(a);
	}
	public Dog makeDog() {
		return new Dog();
	}
	public Cat makeCat() {
		return new Cat();
	}
	
	
	
	
	public void test5() {
		Animal c = makeCat();
		Animal d = makeDog();
		
		Animal[] arr = new Animal[100];
		for(int i =0; i<arr.length ; i++) {
			if(i%2==0)
				arr[i] = makeDog();
			else 
				arr[i] = makeCat();
		}
		for(Animal a : arr)
			a.attack();
	}
	
	
	public void test8() {
		Runnable r1 = new Dog();
		r1.run(); 
		Bitable b = new Dog();
		b.bite("bow wow bow");
		System.out.println("=============================");
		
		Dog d = (Dog)b;
		d.attack();
		d.bite("bow");
		d.kick();
		System.out.println("=============================");

		Eagle e = new Eagle();
		e.attack();
		e.fly();
		e.say();
		
	}
}
