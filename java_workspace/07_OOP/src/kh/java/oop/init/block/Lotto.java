package kh.java.oop.init.block;

public class Lotto {
	private int [] lotto = new int[10];
	//객체생성과 동시에 변수 초기화
	{
		for(int i =0 ; i<6;i++)
			lotto[i] = (int)(Math.random()*45)+1;
	}
}
