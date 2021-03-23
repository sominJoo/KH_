package kh.java.random.number;

import java.util.Random;
import java.util.Scanner;

public class RandomNumberTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		RandomNumberTest r= new RandomNumberTest();
//		r.test1();
//		r.test1_1();
//		r.test3();
		r.test4();
	}
	
	/**
	 * java.util.Random
	 */
	public void test1() {
		Random rnd = new Random();
//		int num = rnd.nextInt(); 		//int 범위 안에서 하나를 골라 난수 출력(21억)
		
		//경우의 수 , 시작값(최소값)
//		int num = rnd.nextInt(10); // 0~9까지 10개의 난수 제공
//		System.out.println(num);
		
		int num2 = rnd.nextInt(10)+1; //1~10까지 난수 제공
		System.out.println(num2);
		
		//101-200
		int num3 = rnd.nextInt(100)+101;
		System.out.println(num3);
		
		//0.0(포함) ~ 1.0(미포함)의 난수
		double dnum = rnd.nextDouble();
		System.out.println(dnum);
		
		boolean b = rnd.nextBoolean();
		System.out.println(b);
		
	}
	
	
	/**
	 * Math.random() - 0.0(포함) ~ 1.0(미포함)  실수를 리턴
	 */
	public void test1_1() {
		double num = Math.random();
		System.out.println(num);
		
		//정수형 난수 : Math.random() * 경우의 수 + 최소값
		int i = (int)(Math.random()*10)+1; 
		System.out.println(i);
	}

	
	/*
	 * 동전 게임
	 */
	public void test3() {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("동전 앞/뒤를 입력(앞이면 1입력, 뒤면 2입력) : ");
		int user = sc.nextInt();
		
		int coin = (int)(Math.random()*2)+1;
		String result = (user==coin) ? "정답" : "오답";
		
		System.out.println(result);
		System.out.println("user = "+user + "  coin  = " +coin);
		
	}
	
	/**
	 * 올림(ceiling - double return), 버림(floor - double), 반올림(round - long)
	 */
	public void test4() {
		//올림
		double num =1.1;
		double result = Math.ceil(num);
		System.out.println("result = "+result);
		
		//버림
		result = Math.floor(num);
		System.out.println("result = "+result);
		
		//올림해서 소수 첫번재 자리까지 표현 : 1.3 
		//1.23 *10 => 12.3 =>올림 처리 => 13 /10 =? 1.3
		num =1.23; 	
		num *= 10;
		result = Math.ceil(num)/10;
		System.out.println("result = "+result);
		
		//반올림 = > 결과 : 3.8
		double dnum = 3.75;
		dnum *= 10;
		//반올림의 결과는 long(정수형으로 출력된다) 따라서 결과의 형변환이나 10의 소수형인 10.0으로 나눠줘야한다.
		double result1 = (double)Math.round(dnum)/10;
		System.out.println("result = "+result1);
	
	}
}
