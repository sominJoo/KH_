package kh.java.gui.swing.container;

import java.awt.BorderLayout;
import java.awt.Color;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class JPanelTest extends JFrame{
	public JPanelTest() {
		setSize(800,500);
		setLocationRelativeTo(null);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		setLayout(null);
		
		//자식 컴포넌트 추가
		JPanel panel1 = new JPanel();
		panel1.setBackground(Color.MAGENTA);
//		panel1.setBackground(new Color(0,255,0));
		JLabel label1 = new JLabel("panel1");
		panel1.setBounds(100,50,300,400);
		// JFrame > JPanel > JLabel
		panel1.add(label1);
		
		JPanel panel2 = new JPanel();
		panel2.setBackground(Color.gray);
		JLabel label2 = new JLabel("panel2");
		panel2.setBounds(400,50,300,400);
		panel2.add(label2);
		
		
		add(panel1);
		add(panel2);
		
		setVisible(true);
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new JPanelTest();
	}

}
