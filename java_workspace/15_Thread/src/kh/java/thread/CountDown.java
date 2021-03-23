package kh.java.thread;

public class CountDown extends Thread {

	private int num;
	public CountDown(int num) {
		super();
		this.num = num;
	}
	@Override
	public void run() {
		for(int i=num; i >=0 ;i--) {
			System.out.println(i);
			try {
				Thread.sleep(100);
			} catch (InterruptedException e) {
				break;
			}
		}
	}
	
	public void delay(long millis) {
		
	}

}
