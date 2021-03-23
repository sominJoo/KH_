package kh.java.loop;

public class BreakContinueTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		BreakContinueTest b = new BreakContinueTest();
//		b.test();
		b.test4();
	}
	private void test() {
		// TODO Auto-generated method stub
		final int NUM = 11;
		int i = 1;
		int sum = 0;
		while(true) {
			sum = NUM*i;
			if(sum < 1000) {
				System.out.println(sum);
				i++;
			}
			else 
				break;
		}
	}
	
	public void test4() {
		char num = 47;
		while(true) {
			num++;
			if(num>= 48 && num<=122) { //아스키 코드 0~z
				if(!((num>=48&& num<=57) || (num>=65&&num<=90) || (num>=97&&num<=122)))
					continue;
				System.out.println(num);
			}
		}
	}
		
}
