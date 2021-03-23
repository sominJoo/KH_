package kh.java.gui.swing.chage.panel;

import java.awt.Color;

import javax.swing.JFrame;

import kh.java.gui.util.MyUtil;

public class MainFrame extends JFrame{

	public static CustomPanel[] panels = new CustomPanel[3];
	
	public MainFrame(int w, int h, String title) {
		// TODO Auto-generated constructor stub
		MyUtil.init(this, w, h, title);
		
		//panels 객체 할당
		panels[0] = new CustomPanel(this,Color.gray,"Panel1");
		panels[1] = new CustomPanel(this,Color.green,"Panel2");
		panels[2] = new CustomPanel(this,Color.red,"Panel3");
		
		add(panels[0]); //시작페이지
		
	}
	
}
