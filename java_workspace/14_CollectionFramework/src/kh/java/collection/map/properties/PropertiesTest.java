package kh.java.collection.map.properties;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Properties;

/**
 * Properties
 * -K,V를 타입을 String,String으로 제한한 map
 * -file IO 메소드 지원
 * - 설정정보 표현에 최적화
 *
 */
public class PropertiesTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		PropertiesTest p = new  PropertiesTest();
//		p.test1();
		p.test2();
	}
	public void test1() {
		Properties prop = new Properties();
		prop.setProperty("url", "http://localhost:900/kh-java");
		prop.setProperty("username", "hongged");
		prop.setProperty("password", "123333");
		
		//파일에 저장 
		//.properties
		//.xml
		try {
//			prop.store(new FileWriter("userInfo.properties"), "username");
			prop.storeToXML(new FileOutputStream("userInfo.xml"), "userInfo.xml");
			System.out.println(prop);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void test2() {
		Properties prop = new Properties();
		try {
//			prop.load(new FileReader("userInfo.properties"));
			prop.loadFromXML(new FileInputStream("userInfo.xml"));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//1.요소가져오기
		String url = prop.getProperty("url");
		String userName = prop.getProperty("username");
		String password = prop.getProperty("password");
		
		System.out.println(url);
		System.out.println(userName);
		System.out.println(password);
		
		//2.전체열람 메소드 Enumeration
		Enumeration<?> en = prop.propertyNames();	//name(key) 모음
		while(en.hasMoreElements()) {
			String name= (String)en.nextElement();
			String value = prop.getProperty(name);
			System.out.println(name+", "+ value);
		}
		
		//주소가 가리키는 곳에 값이 없다.
		
		
	}
}
