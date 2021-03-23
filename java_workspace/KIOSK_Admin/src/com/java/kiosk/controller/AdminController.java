package com.java.kiosk.controller;

import java.util.List;

import com.java.kiosk.io.AdminIO;
import com.java.kiosk.model.vo.Menu;

 
//입출력 일시키기
public class AdminController {
	
	private static AdminIO adminIO = new  AdminIO();
	
	public static void insertMenu(List<Menu> menuList) {
		 adminIO.insertdMenu(menuList);
		
	}

	public static List<Menu> loadMenuList() {
		return adminIO.loadMenuList();
	}

	
}
