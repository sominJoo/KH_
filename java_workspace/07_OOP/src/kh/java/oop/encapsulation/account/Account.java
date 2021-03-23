package kh.java.oop.encapsulation.account;


/**
 * 구조체의 단점을 극복한 클래스
 *  - private 접근 제한자 사용, field의 직접접근 방지
 *  - public 접근 제한자 사용한 method를 이용하 field의 우회적 접근.
 *  
 */
public class Account {
	
	private String name;
	private	long balance;
	
	//public method를 통해 우회 접근
	//setter : 필드값 셋팅
	//getter : 필드값 가져와기
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getBalance() {
		return balance;
	}
	public void setBalance(long balance) {
		this.balance = balance;
	}
	
	//입금
	public void depoist(long money) {
		if(money >0) {
			balance += money;
			System.out.println(name +"님 계좌에 "+money +"원 입금되셨습니다.");
		}
		else
			System.out.println("잘못된 금액이 입력되었습니다.");
	}
	
	//출금
	public void withDraw(long money) {
		if(money >0) {
			balance += money;
			System.out.println(name +"님 계좌에 "+money +"원 입금되셨습니다.");
		}
		else
			System.out.println("잘못된 금액이 입력되었습니다.");
	}
	
}
