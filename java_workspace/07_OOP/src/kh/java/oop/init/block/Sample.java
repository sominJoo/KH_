package kh.java.oop.init.block;


/**
 * 필드 값 대입 순서
 * 1. 명시한 값이 없다면, type별 기본값 대임
 * 2. 명시한 값
 * 3. 초기화 블럭에서 대입한 값
 * 4. 생성자에서 대입한 값
 
 * 클래스 변수 필드 값 대입 순서
 * 1. 명시한 값이 없다면, type별 기본값 대임
 * 2. 명시한 값
 * 3. static 초기화 블럭에서 대입한 값 
 */
public class Sample {
	//명시한 값
	private int dd = 1;
	
	private int num;
	//멤버변수용 초기화 블럭 - 객체 생성시 호출된다.
	{
		System.out.println("--- 초기화 블럭 시작 ---");
		System.out.println(num);
		num =78;
		System.out.println("--- 초기화 블럭 끝 ---");
	}
	public static String s;
	//클래스 변수용 초기화 블럭
	static {
		System.out.println("--- static 초기화 블럭 시작---");
		System.out.println(s);
		s = "나 statc이야";
		System.out.println("--- static 초기화 블럭 끝---");
	}
	
	
	//생성자 : 메소드 변형
	// 객체생성시 자동으로 호출되는 메소드
	public Sample() {
		System.out.println("---생성자 시작 ---");
		System.out.println(num);
		num =99;
		System.out.println("--- 생성자 끝 ---");
	}
	

	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
}
