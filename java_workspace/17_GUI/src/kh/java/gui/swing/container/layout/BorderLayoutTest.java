package kh.java.gui.swing.container.layout;

import java.awt.BorderLayout;
import java.awt.Color;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

import kh.java.gui.util.MyUtil;

public class BorderLayoutTest extends JFrame{
	public BorderLayoutTest(int w, int h, String title) {
		//반복적 코드 해결
		MyUtil.init(this,w,h,title);
		
		JPanel north = new BorderPanel("복",Color.CYAN);
		JPanel south = new BorderPanel("남",Color.blue);
		JPanel east = new BorderPanel("남",Color.gray);
		JPanel west = new BorderPanel("남",Color.orange);

		JPanel center = new BorderPanel("center",Color.green);
		
		this.add(north,BorderLayout.NORTH);
		this.add(south,BorderLayout.SOUTH);
		this.add(east,BorderLayout.EAST);
		this.add(west,BorderLayout.WEST);
		this.add(center);
	}
	/**
	 * 내부 클래스
	 */
	public class BorderPanel extends JPanel{
		public BorderPanel(String title, Color c) {
			setBackground(c);//배경색 지정
			JLabel label = new JLabel(title);
			this.add(label);
		}
	}
		
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new BorderLayoutTest(500,500,"Border LayoutTest").setVisible(true);
	}
	
}
