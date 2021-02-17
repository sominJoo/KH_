package common;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.Properties;

/**
 * Service, DAO클래스의 공통부문을 static 메소드로 제공
 * 예외처리를 공통부분에서 작성하므로, 사용(호출)하는 쪽의 코드를 간결화
 */
public class JDBCTemplate {
	public static String driverClass;
	public static String url; //xe:사용중인 실제 db이름
	public static String user;
	public static String password;
	
	static {
		//data-source.properties 내용읽어서 변수에 대입 - .gitignore로 git버전관리를 하지 않는다(=> 공유 x)
		//공유시 적합(개인정보,키,비밀번호 등 유출 위험에서 벗어남)
		
		Properties prop = new Properties();
		String fileName = "resource/data-source.properties";
		
		try {
			prop.load(new FileReader(fileName));
			driverClass = prop.getProperty("driverClass");
			url = prop.getProperty("url");
			user = prop.getProperty("user");
			password = prop.getProperty("password");
		} catch (IOException e) {
			e.printStackTrace();
		}		
		
		try {
			Class.forName(driverClass); 
		}catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection() {
		Connection conn = null;
		//1.드라이버클래스 등록
		try {
			//2.connection
			conn = DriverManager.getConnection(url, user, password);
			//3.자동커밋 false
			conn.setAutoCommit(false);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void close(Connection conn) {
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public static void close(ResultSet rs) {
		try {
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void close(PreparedStatement pstmt) {
		try {
			pstmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void commit(Connection conn) {
		try {
			conn.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void rollback(Connection conn) {
		try {
			conn.rollback();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
