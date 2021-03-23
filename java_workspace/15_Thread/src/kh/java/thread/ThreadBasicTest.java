package kh.java.thread;

public class ThreadBasicTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ThreadBasicTest t = new ThreadBasicTest();
		t.test0();
		t.test1();
	}
	
	/**
	 * 싱글스레드
	 */
	public void test0() {
		//작업 A
		for(int i=0; i<100; i++)
			System.out.print('|');
		
		//작업 B
		for(int i=0; i<100; i++)
			System.out.print('-');
		
		
	}
	
	
	/**
	 * Thread 생성방법
	 * 1. Thread 클래스 상속
	 */
	public void test1() {
		Thread th1 = new CustomThread1('|');
		Thread th2 = new CustomThread1('-');
		
		//우선순위 지정(1-10). 기본값 5
		th2.setPriority(Thread.MAX_PRIORITY);//10
		th1.setPriority(Thread.MIN_PRIORITY );//1
		th1.start();
		th2.start();
		
	}
	public void test2() {
		CustomThread2 ct1 = new CustomThread2('|');
		Thread thr = new Thread(ct1);
		thr.start();
		CustomThread2 ct2 = new CustomThread2('|');
		Thread th = new Thread(ct2);
		thr.start();
	}
}
