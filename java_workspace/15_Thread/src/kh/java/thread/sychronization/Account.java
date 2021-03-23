package kh.java.thread.sychronization;

public class Account {
	private int balance;

	public Account(int balance) {
		super();
		this.balance = balance;
	}
	
	/**
	 * 출금 메소트 : atm은 이 메소드에 접근해 출금 가능
	 * 
	 * 
	 * 동기화 처리 : 객체 단위로 동기화 처리(account 객체에 대한 lock이 걸림- account 임계영역으로 설정하게 된다)
	 * 1. 메소드를 synchocized 메소드 만들기
	 * 2. synchocized block 사용(추천)
	 */
	public void withdraw(int money) {
		
		String threadName = Thread.currentThread().getName();
		synchronized (this) {
			System.out.println("["+threadName+"]\t -> 잔액 : ￦"+ balance);
			//출금 가능
			if(money <= balance) {
				balance -= money;
				System.out.println("["+threadName+"]\t -> 출금 : ￦"+ money+" , 잔액 : ￦"+balance);
			}
			
			//출금 불가
			else {
				System.out.println(threadName+" 금액 부족하여 출금 불가. 잔액 : "+balance);
			}
		}
		
	}

	public int getBalance() {
		return balance;
	}
}
