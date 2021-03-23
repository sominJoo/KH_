package com.kh.function.run;

import java.util.Scanner;

public class Example {
	public static void main(String args[]) {
		Example e = new Example();
		e.opSample1();
		System.out.println();
		e.opSample2();
	}
	private void opSample1() {
		// TODO Auto-generated method stub
		int korean, english, math;
		int sum =0;
		float avg =0;
		Scanner sc = new Scanner(System.in);
		
		System.out.print("국어 점수를 입력하세요 : ");
		korean = sc.nextInt();
		
		System.out.print("영어 점수를 입력하세요 : ");
		english = sc.nextInt();
		
		System.out.print("수학 점수를 입력하세요 : ");
		math = sc.nextInt();
		
		sum = korean +english + math;
		avg = sum/3;
		System.out.println("총점 : "+sum +", 평균 : "+avg);
		System.out.println((korean>=40 && english>=40 && math>=40 && avg >=60 )? "합격" : "불합격");	
	}
	
	
	private void opSample2() {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		String name,  sex;
		int grade, room, num;
		//char sex;
		double record;
		
		System.out.print("이름을 입력하세요 : ");
		name = sc.nextLine();
		
		System.out.print("성별을 입력하세요(M/F) : ");
		sex = (sc.next().toUpperCase().charAt(0) == 'M')? "남학생": "여학생";
		
		System.out.print("학년 입력하세요 : ");
		grade = sc.nextInt();
		
		System.out.print("반 입력하세요 : ");
		room = sc.nextInt();
		
		System.out.print("번호 입력하세요 : ");
		num = sc.nextInt();
		
		System.out.print("성적을 입력하세요 (예 : 95.55) : ");
		record = sc.nextDouble();
		
		System.out.printf("%d학년 %d반 %d번 %s %s은 성적이 %.2f이다.",grade,room,num,sex,name,record);
	}

	
}
