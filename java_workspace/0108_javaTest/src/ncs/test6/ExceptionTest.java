package ncs.test6;

import java.util.Scanner;

public class ExceptionTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		try {
			Scanner sc= new Scanner(System.in);
			System.out.print("2-5까지의 정수 중 하나를 입력하세요 : ");
			int num = sc.nextInt();
			Calculator c= new Calculator();
			double sum = c.getSum(num);
			System.out.printf("결과값 : %.1f",sum);
		} catch (InvalidException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}
		
	}

}
