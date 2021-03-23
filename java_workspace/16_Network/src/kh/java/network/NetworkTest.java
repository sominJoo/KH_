package kh.java.network;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;

public class NetworkTest {
	public static void main(String[] arg) {
		NetworkTest n = new  NetworkTest();
//		n.test1();
//		n.test2();
		n.test3();
	}
	/**
	 * IP주소 확인하기
	 * InetAddress
	 */
	public void test1() {
		try {
			//naver.com의 IP주소 확인
			InetAddress naver = InetAddress.getByName("naver.com");
			System.out.println(naver.getHostAddress());
			System.out.println("==========================");
			
			//naver.com의 모든 ip주소 확인
			InetAddress[] arr = InetAddress.getAllByName("naver.com");
			System.out.println(arr.length);//=> 서버 컴퓨터가 4군데 있는것을 의미(ip주소가 4개)
			for(InetAddress i : arr)
				System.out.println(i.getHostAddress());
			System.out.println("==========================");
			
			//내컴퓨터의 ip주소
			InetAddress localhost = InetAddress.getLocalHost();
			System.out.println(localhost.getHostAddress());
			
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	/**
	 * URL
	 * - protocol + hostname + port + 지원 path 필요
	 * https://docs.oracle.com/javase/dosc/api/java/util/ArrayList.htmle
	 * 
	 * protocol : 통신규약. https
	 * hostname : docs.oracle.com
	 * port : (https : 443) 프로토콜에 대한 기본 포트는 생략 가능하다. 서비스 번호(컴퓨터 내 특정 프로그램을 가리키는 논리적 번호)
	 * 
	 */
	public void test2() {
		try {
//			URL url = new URL("https://docs.oracle.com/javase/dosc/api/java/util/ArrayList.html");
			//?뒤 파라미터(k,v)쌍 : 사용자 입력값
			URL url = new URL("https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=%EC%BD%94%EB%A1%9C%EB%82%98");
			System.out.println(url.getProtocol());
			System.out.println(url.getHost());
			System.out.println(url.getPort());//443 안적으면 -1 생성
			//getDefaultPort() : 프로토콜의 기본 포트 생성
			System.out.println(url.getPort() != -1 ? url.getPort() : url.getDefaultPort());
			System.out.println(url.getPath());
			//사용자 입력값
			System.out.println(url.getQuery());
		
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	/**
	 * URL 연결 요청 + 파일로 저장
	 */
	public void test3() {
		try {
			String add = "https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=%EC%BD%94%EB%A1%9C%EB%82%98";
			URL url = new URL(add);
			URLConnection conn = url.openConnection();
			//연결로 얻어온 응답을 받는 BufferedReader
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			BufferedWriter bw = new BufferedWriter(new FileWriter("search_result.html"));
			String data ="";
			while((data=br.readLine()) != null) {
//				System.out.println(data);
				bw.write(data);
				bw.write("\n");
			}
			System.out.println("검색완료");
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
