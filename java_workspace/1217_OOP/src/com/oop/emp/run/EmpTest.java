package com.oop.emp.run;

import java.util.Scanner;

import com.oop.emp.model.Employee;

public class EmpTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		String menu = "******* 사원 정보 관리 프로그램 **********\n"
				    + "1. 새 사원 정보 입력\n"
				    + "2. 사원 정보 삭제\n"
				    + "3. 사원정보 출력\n"
				    + "9. 끝내기\n"
				    + "*************************************\n"
				    + "선택하세요 =>";
		
		int selected = 0;
		Employee e = null; // 반복문 이전에 선언
		while(true){
			System.out.print(menu);
			selected = sc.nextInt();
			switch (selected) {
				case 1:
					e = new Employee();
					e.empInput();
					break;
				case 2: 
					e = null; 
					break;
				case 3: 
					if(e == null) 
						System.out.println(">>먼저 사원정보를 입력하세요.");
					else 
						e.empOutput();
					break;
			}
			if(selected==9) break;
		}

	}

}
