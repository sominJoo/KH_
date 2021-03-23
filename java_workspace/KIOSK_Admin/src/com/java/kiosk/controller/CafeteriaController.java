package com.java.kiosk.controller;

import com.java.kiosk.cafeteria.Cafeteria;
import com.java.kiosk.model.vo.Menu;

public class CafeteriaController {
	private Cafeteria c = new Cafeteria();
	
	public CafeteriaController() {
		
	}
	public void setMenuBtn() {
//		c.menuAdd();
	}
	public void add(String menu, int price) {
		c.addMenu(menu,price);
	}
	
	public String total() {
		return Integer.toString(c.totalPrice());
	}
	
	public void timer() {
		c.timerStart();
	}
	
}
