package kh.java.io.char_;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;

public class FileRWTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		FileRWTest f = new FileRWTest();
		f.test1();
		f.test2();
	}

	/**
	 * 문자기반 스트림 - 2바이트
	 */
	public void test1() {
		// TODO Auto-generated method stub
		File f= new File("test.txt");
		FileReader fr = null;
		
		try {
			fr = new FileReader(f);
			int data =0;
			while((data = fr.read()) != -1) {
				System.out.print((char)data);	//글자단위로 읽어옴(문자기반 스트림 => 한글이 안깨짐)
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try {
				fr.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	// 보조스트림 => 성능향상을 위해 사용.
	//FileReader => 문자 단위, BufferedReader => String 처리
	public void test2() {
		File f = new File("test.txt");
		File dest = new File("char_/test_copy.txt");
		
		//try() => close를 안해도된다. 자동반납
		try(BufferedReader br = new  BufferedReader(new FileReader(f));
			BufferedWriter bw = new  BufferedWriter(new FileWriter(f));
			) {
			String data = null;
			while((data = br.readLine())!= null) {
				System.out.println(data);
				bw.write(data+"\n");	
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
			
	}

}
