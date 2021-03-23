package kh.java.thread;

import javax.swing.JOptionPane;

public class ThreadControlTest {

	/**
	 * 일시정지  : waiting. timed-waiting. blocked
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ThreadControlTest t = new ThreadControlTest();
//		t.test1();
//		t.test2();
		t.test3();
		
		System.out.println(Thread.currentThread().getName());
//		t.test4();
	}

	private void test1() {
		// TODO Auto-generated method stub
		Thread t1 = new Thread(new SleepThread('|',500));
		Thread t2 = new Thread(new SleepThread('-',300));
		t1.start();
		t2.start();
	}
	
	/**
	 * 3의 배수 출력 스레드와
	 * 4의 배수 출력 스레드를 생성하고 실행.
	 * 
	 * [Thread 이름- 배수]
	 * 실행간격 : 200밀리초
	 * 100초과시 중지
	 * [3배수 쓰레드 - 3]
	 */
	public void test2() {
		Thread t1 = new Thread(new SleepThread(3, 200));
		t1.setName("3의 배수 출력 스레드");
		Thread t2 = new Thread(new SleepThread(4, 200));
		t2.setName("4의 배수 출력 스레드");
	
		t1.start();
		t2.start();
	}
	
	/**
	 * Thread 간 종속관계 
	 * 일반 - 데몬 
	 * Daemon - linux 계열의 컴퓨터에서 백그라운드 프로세스를 가리키는 말
	 */
	public void test3() {
		
		Thread cnt = new CountDown(50);
		//주된 쓰레드의 부속으로 돌릴때 사용(사용자 글쓰기 시 일시저장)
		//(메인쓰레드 종료시 종속쓰레드는 작업 다 못끝내도 메인 쓰레드와 함께 종료된다.)
		//쓰레드를 데몬 스레드로 변경(메인 스레드 종료시 데몬도 같이 종료되는 특성에따라 확인 시 메인 함수가 종료되면서 데몬 쓰레드도 같이 종료된다)
		cnt.setDaemon(true); 	
		cnt.start();
		JOptionPane.showMessageDialog(null, "확인 누를 시 종료");	
	}
	
	
	/**
	 * 쓰레드 종료시키기
	 * 1. 해당 쓰레드의 interrupt() 메소드 호출
	 * 2. interruptedException 발생
	 * 3. catch절에 다음 액션 종료 작성
	 */
	public void test4() {
		Thread cnt = new CountDown(100);
		cnt.start();
		
		JOptionPane.showMessageDialog(null, "확인 누를 시 종료");
		cnt.interrupt();		//InterruptedException 예외 발생
	}

}
