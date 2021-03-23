package kh.java;

import java.io.IOException;
import java.sql.SQLException;

public class OverrideTest {

}
class Parent{
	public void test() throws SQLException, IOException{
		
	}
}
class Child extends Parent{


//	public void test() {}
//	public void test() throws SQLException{}
//	public void test() throws IOException{}
	
//	public void test() throws Exception{} //=> 상위타입의 예외로 던지는건 불가능
	@Override
	public void test() throws SQLException, IOException {
		// TODO Auto-generated method stub
		
	}
	
}