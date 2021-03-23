package kh.java.thread;

public class CustomThread2 implements Runnable {

	private char ch;
	/**
	 * Thread 작업 내용
	 * 시작 - 끝
	 */
	@Override
	public void run() {
		for(int i =0; i< 100; i++)
			System.out.print(ch);
		System.out.println("<"+ch+"끝>");
	}
	public CustomThread2(char ch) {
		this.ch = ch;
	}


}
