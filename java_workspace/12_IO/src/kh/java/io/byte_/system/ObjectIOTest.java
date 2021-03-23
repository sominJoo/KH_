package kh.java.io.byte_.system;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Calendar;

public class ObjectIOTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ObjectIOTest o = new ObjectIOTest();		
		o.test1();
		o.test2();
	}
	
	public void test1() {
		File f = new File("object/user.ser");
		try(
				ObjectOutputStream oos = 
				new ObjectOutputStream(
						new BufferedOutputStream
						 (new FileOutputStream(f)));
	   ){
			User u = new User("coco","1237","코코",Calendar.getInstance());
			User u1 = new User("ㅁㄴㅇㄹ","4564565","asaaa",Calendar.getInstance());
			User u2 = new User("ㅗㅓ호ㅓㅀ","133424","hhhhhhh",Calendar.getInstance());
			oos.writeObject(u);				//객체 쓰기
			oos.writeObject(u1);				//객체 쓰기
			oos.writeObject(u2);				//객체 쓰기
			System.out.println("객체 쓰기 완료 !!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public void test2() {
		File f = new File("object/user.ser");
		try(ObjectInputStream ois = new ObjectInputStream(
				new BufferedInputStream(
						new FileInputStream(f)));) {
			while(true) {
				System.out.println(ois.readObject());		//객체 읽기
			}
		} catch(EOFException e) {//=> 객체 읽을것이 더 없으면 나오는 exception
			System.out.println("파일 읽어오기 완료!");
		}
		catch (IOException | ClassNotFoundException e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}
}
