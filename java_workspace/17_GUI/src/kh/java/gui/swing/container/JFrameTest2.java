package kh.java.gui.swing.container;

import javax.swing.JFrame;

public class JFrameTest2 extends JFrame {
	public JFrameTest2() {
		setTitle("JFrame test2");
//		setSize(300,200);
//		setLocationRelativeTo(null);
		setBounds(200,200,300,200);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		//리사이즈 방지
		setResizable(false);
		
		setVisible(true);
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new JFrameTest2();
	}

}
