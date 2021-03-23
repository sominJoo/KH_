package kh.java.thread.sychronization;

/**
 * 계좌 Account에 접근하는 atm가 2대가 있다.
 *  - 각 ATM기(Thread)가 하나의 계좌에서 출금하는 상황
 * @author ddomin
 *
 */
public class WithdrawTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Account acc = new Account(1000);
		Thread atm1 = new Atm(acc);
		Thread atm2 = new Atm(acc);
		
		atm1.setName("atm1");
		atm2.setName("atm2");
		
		atm1.start();
		atm2.start();
		
	}

}
