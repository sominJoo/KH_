package kh.java.api.string;

import java.util.StringTokenizer;

public class StringTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		StringTest s= new StringTest();
		s.test2();
	}
	
	/**
	 * StringBuilder mutable(변경가능) 싱글쓰레드용
	 * StringBuffer  mutable(변경가능) 멀티쓰레드용 동기화를 지원	
	 * 
	 */
	public void test2() {
		StringBuilder sb = new StringBuilder("java");
		System.out.println(sb.hashCode());	//주소값
		sb.append(" oracle");				//buffer에 더함
		System.out.println(sb.hashCode());	//주소값
		
		System.out.println(sb);
		print(sb.toString());
	}
	
	public void print(String s) {
		System.out.println(s);
	}
	
	public void test3() {
		String data ="java§oracle§spring§html§maven§kh/java";
		
		//1.split
		
		
		//2.StringTokenizer
		StringTokenizer st = new StringTokenizer(data,"§");
		while(st.hasMoreTokens()) {
			System.out.println(st.countTokens());
			String s = st.nextToken();
			System.out.println("<"+s+">");
		}
		
		
		//구분자 처리 다른점
		//1.StringTokenizer은 빈문자열은 요소로 취급x
		//2.StringTokenizer은 구분자 문자열을 문자 단위로 인식 
		//3.split도 정규식표현을 이용하여서 문자단위로 처리가능
		data = "a,,b,,c,d";
		String[] arr = data.split(",");			//
		for(String s : arr) {
			System.out.println("<"+s+">");
		}
		
		System.out.println("=================");
		st = new StringTokenizer(data,",");
		while(st.hasMoreTokens())
			System.out.println("<"+st.nextToken()+">");
		
		System.out.println("=================");
		System.out.println("=================");
		
		data = "a, b,c, d";
		//split은 ", "컴마+공백은 한문자라 생각
		arr = data.split(", ");			
		for(String s : arr) {
			System.out.println("<"+s+">");
		}
		
		System.out.println("=================");
		//StringTokenizer은", "를 ",", " "로 두 문자로 인식
		st = new StringTokenizer(data,", ");	
		while(st.hasMoreTokens())
			System.out.println("<"+st.nextToken()+">");
	}
}
