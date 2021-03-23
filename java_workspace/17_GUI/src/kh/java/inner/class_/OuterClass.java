package kh.java.inner.class_;

/**
 * 내부 클래스
 * 1. static 내부 클래스
 * 2. non-static 내부클래스
 * 3. 지역 내부클래스
 * 
 * 목적 
 *  - 외부 클래스 안에서만 사용할때.
 *  - 외부 클래스의 자원을 쉽게 접근하기 위해
 */
public class OuterClass {
	private int num;
	public class a{
		public void aaa() {
			
		}
	}
	public class b{
		public void bbb() {
			
		}
	}
	/**
	 * 지역 내부 클래스는 변수와 마찬가지로 접근제한자를 가질수 없다.	 */
	public class c{
		void ccc() {
			
		}
	}
}
