package run;

import manage.view.ProductMenu;

public class Run {
	public static void main(String[] arg) {
		//view 호출
		new ProductMenu().mainMenu();
		System.out.println("-----------프로그램종료-----------------");
	}
}
