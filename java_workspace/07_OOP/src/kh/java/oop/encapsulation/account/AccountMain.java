package kh.java.oop.encapsulation.account;

public class AccountMain {
	public static void main(String args[]) {
		Account a = new Account();
		
		/*
		//struct의 단점 - 직접접근하기 때문에 보안문제 발생
		//입금
		a.name = "홍길동";
		a.balance =1_000_000;
		a.balance += 500_000;
		System.out.println(a.balance);
		
		//출금 
		a.balance -= 100_000;
		System.out.println(a.balance);
		*/
		
		a.setBalance(1_000_000);
		a.setName("홍길동");
		a.depoist(500_000);
	}
}
