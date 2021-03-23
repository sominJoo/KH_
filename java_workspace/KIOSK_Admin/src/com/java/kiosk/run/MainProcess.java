package com.java.kiosk.run;

import com.java.kiosk.view.AdminFrame;
import com.java.kiosk.view.AdminLoginFrame;
import com.java.kiosk.view.CafeteriaFrame;

public class MainProcess {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new AdminFrame(1000,800,"학식 시스템").setVisible(true);
	}
}
