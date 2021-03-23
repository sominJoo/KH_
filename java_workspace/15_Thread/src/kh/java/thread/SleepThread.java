package kh.java.thread;

public class SleepThread implements Runnable {

	
	private int num;
	private long millis; //밀리초
		
	public SleepThread(int i, long millis) {
		super();
		this.num = i;
		this.millis = millis;
	}
	
	@Override
	public void run() {
		// TODO Auto-generated method stub
		int i =1;
	
		while(true) {
			String threadName = Thread.currentThread().getName();
			int prod = i++ * num;
			if(prod < 100)
				System.out.println(threadName + " - "+prod );
			waitting();
		}
		
		
				
	}
	public void waitting() {
		//현재 쓰레드를 timed-waitting 상태로 변경
		try {
			Thread.sleep(millis);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
}
