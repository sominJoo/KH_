package kh.java.oop.access.modifier.class_.field;


/**
 * 접근 제한자 Access Modifier
 * 1. public
 * 2. protected
 * 3. default(작성금지.) : 같은 패키지 안. 
 * 4. private : 같은 클래스 내에서만 접근 가능
 *
 */
public class Kiwi {
	public int publicNum =100;
	protected int protectedNum =90;
	int defaultNum =80;
	private int privateNum =70;
}
