package kh.java.thread.sychronization;

public class Atm extends Thread {
	private Account acc;
	public Atm(Account acc) {
		this.acc = acc;
	}
	@Override
	public void run() {
		while(acc.getBalance() > 0) {
			int money = (int)(Math.random()*3+1)*100;
			acc.withdraw(money);
			try {
				Thread.sleep(1500);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		System.out.println(Thread.currentThread().getName()+" 종료");
	}
	public Account getAcc() {
		return acc;
	}
	
}
