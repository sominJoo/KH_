package kh.java.gui.swing.event;

import java.awt.BorderLayout;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.JTextField;

import kh.java.gui.util.MyUtil;

public class LowLevelEventTest2 extends JFrame{
	public LowLevelEventTest2(int w, int h, String title) {
		MyUtil.init(this, w, h, title);
		
		//topPanel
		initTopPanel();
		
		//center
		initCenterPanel();
	}
	private void initCenterPanel() {
		// TODO Auto-generated method stub
		JPanel panel = new JPanel();
		panel.add(new JTextArea(5,10));
		add(panel);
	}
	private void initTopPanel() {
		// TODO Auto-generated method stub
		JPanel panel = new JPanel();
		panel.add(new JLabel("사용자  입력 : "));
		panel.add(new JTextField(10));
		add(panel, BorderLayout.NORTH);
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new LowLevelEventTest2(300,200,"키이벤트").setVisible(true);
	}

}
