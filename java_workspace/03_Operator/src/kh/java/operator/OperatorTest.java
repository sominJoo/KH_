package kh.java.operator;

public class OperatorTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		OperatorTest o = new OperatorTest();
//		o.test1();
//		o.test1_1();
//		o.test2();
		o.test3();
	}
	
	/**
	 * 단항 연산자
	 */
	public void test1() {
		int a= 10;
		System.out.println(+a + ", "+ -a );
		
		boolean bool = (a !=10);		//같지 않으면 true, 같으면 false
		System.out.println(!bool);
		
		//증감 연산자(연산은 오른쪽 먼저)
		// 전위 증감 연산저 : 먼저 1증가 후 인점연산에 사용
		// 후위 증감 연산자 : 인접연산 사용 후 1증감한다.
		a++;
		System.out.print("a = \n"+a);
		--a;
		System.out.print("a = \n"+a);
		System.out.println();
		
		int k = 1;
		int m = k++;	 // k를 대입 후 ++
		System.out.println("k = "+k+", m ="+m);
		
		int n = 1;
		int b = ++n;	
		System.out.println("k = "+n+", m ="+b);
		
		int i = 3;
		int j = ++i +10 ;	
		System.out.println("i = "+i+", j ="+j);
	}
	
	public void test1_1() {
		int x =10;
		int y =10;
		int z = ++x;
		System.out.println();
		System.out.println("x = "+x+", y ="+y+", z =" + z); //11,10,11
		
		z= y++;
		System.out.println("x = "+x+", y ="+y+", z =" + z); //11,11,10
		
		x=20;
		z=x++ + --y;
		System.out.println("x = "+x+", y ="+y+", z = " + z); //21,10,30      
		
		int m = 20;
		int n = m++ + m; // 20+21
		System.out.println(m+", " + n);
		
	}
	
	/**
	 * 단항 연산자
	 */
	public void test2() {
		int a = 10;
		int b = 4;
		System.out.println(a + b);
		System.out.println(a - b);
		System.out.println(a * b);
		System.out.println(a / b);
		System.out.println(a % b);
		
		//a+((b*a)/b)- (a%b)
		System.out.println(a+b*a/b-a%b);
		
		System.out.println(a>b); //gt
		System.out.println(a<b); //lt
		System.out.println(a>=b); //ge
		System.out.println(a<=b);//le
	}
	
	/**
	 * 이항연산자
	 * 논리비교연산자 && ||
	 */
	public void test3() {
		System.out.println(10>3 ? "dddd" : "zzz");
		
	}
}
