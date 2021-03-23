package kh.java.exception;

import java.io.PrintStream;
import java.io.PrintWriter;

/**
 * 커스텀 예외클래스
 * -의미전달 명확
 * 1. checked exception : extends Exception
 * 2. unchecked exception : extends RuntimeException
 * 
 */
public class UnderAgeException extends Exception{
	
	//부모생성자 따라 만들어두기
	@Override
	public String getMessage() {
		// TODO Auto-generated method stub
		return super.getMessage();
	}

	public UnderAgeException() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UnderAgeException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		// TODO Auto-generated constructor stub
	}

	public UnderAgeException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public UnderAgeException(String message) {
		super(message);
		System.out.println("실패");
		// TODO Auto-generated constructor stub
	}

	public UnderAgeException(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}
}
