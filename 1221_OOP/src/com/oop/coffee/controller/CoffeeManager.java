package com.oop.coffee.controller;

import java.util.Scanner;

import com.oop.coffee.model.dto.Coffee;

public class CoffeeManager {
	public static final int MEX =3;
	private Coffee[] cArr= new Coffee[MEX];
	private Scanner sc = new Scanner(System.in);
	
	//입력
	public void inputInfo() {
		for(int i =0; i<cArr.length ; i++) {
			System.out.print((i+1)+"번째 원산지를 입력하세요");
			String origin = sc.nextLine();
			
			System.out.print((i+1)+"번째 지역를 입력하세요");
			String location = sc.nextLine();
			
			cArr[i]= new Coffee(origin,location);
		}
		
	}
	
	//출력
	public void outputInfo() {
		String str = "\n\n<세계3대커피>\n"
					+"---------------------------\n"
					+"원산지\t 지역\n"
					+"---------------------------";
		System.out.println(str);
		for(Coffee c : cArr)
			c.printInfo();
		System.out.println("---------------------------");
		
	}
}
