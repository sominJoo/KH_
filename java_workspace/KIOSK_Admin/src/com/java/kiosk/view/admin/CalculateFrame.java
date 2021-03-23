package com.java.kiosk.view.admin;

import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.border.LineBorder;

import com.java.kiosk.util.MyUtil;

public class CalculateFrame extends JFrame {
	public static final int RESERVE_PRICE = 100000;	//준비금
	JPanel right;
	public CalculateFrame() {
		MyUtil.init(this, 1000, 800, "정산");
		setLayout(null);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		new leftPanel(this).setVisible(true);
		new rightPanel(this).setVisible(true);

	}
	
	public class leftPanel extends JPanel {
		public leftPanel(CalculateFrame f) {
			// TODO Auto-generated method stub
			JPanel mainPanel = new JPanel();
			mainPanel.setBounds(0, 0, 500, 770);
			mainPanel.setBorder(new LineBorder(Color.BLACK));
			mainPanel.setLayout(new GridLayout(0,1,20,20));
			
			JPanel panel1 = new JPanel();
			panel1.setLayout(new FlowLayout(FlowLayout.LEFT));
			JLabel label1 = new JLabel("준비금 : ");
			label1.setFont(new Font("맑은  고딕",Font.BOLD,15));
			JLabel reserveLabel = new JLabel(Integer.toString(RESERVE_PRICE));
			reserveLabel.setFont(new Font("맑은  고딕",Font.BOLD,20));
			panel1.add(label1);
			panel1.add(reserveLabel);
			mainPanel.add(panel1);
			
			JPanel panel2 = new JPanel();
			panel2.setLayout(new FlowLayout(FlowLayout.LEFT));
			JLabel label2 = new JLabel("총 판매금액 : ");
			label2.setFont(new Font("맑은  고딕",Font.BOLD,20));
			JLabel totalPriceLabel = new JLabel(Integer.toString(ResultFrame.totalSalesPrice));
			totalPriceLabel.setFont(new Font("맑은  고딕",Font.BOLD,20));
			panel2.add(label2);
			panel2.add(totalPriceLabel);
			mainPanel.add(panel2);
			
			JPanel panel3 = new JPanel();
			panel3.setLayout(new FlowLayout(FlowLayout.LEFT));
			JLabel label3 = new JLabel("회수금 : ");
			label3.setFont(new Font("맑은  고딕",Font.BOLD,20));
			JButton returnBtn = new JButton("입력하기");
			returnBtn.addActionListener(new ActionListener() {
				@Override
				public void actionPerformed(ActionEvent e) {
					// TODO
				}
			});
			panel3.add(label3);
			panel3.add(returnBtn);
			mainPanel.add(panel3);
			
			f.add(mainPanel);
		}
	}

	
	public class rightPanel extends JPanel {
		public rightPanel(CalculateFrame f) {
			// TODO Auto-generated method stub
			JPanel mainPanel = new JPanel();
			mainPanel.setBounds(500, 0, 500, 770);
			mainPanel.setBorder(new LineBorder(Color.BLACK));
			mainPanel.setLayout(new GridLayout(0,1,20,20));
			
			JPanel panel1 = new JPanel();
			panel1.setLayout(new FlowLayout(FlowLayout.LEFT));
			JLabel label1 = new JLabel("5만원 : ");
			label1.setFont(new Font("맑은  고딕",Font.BOLD,15));
			JLabel label50 = new JLabel(Integer.toString(RESERVE_PRICE));
			label50.setFont(new Font("맑은  고딕",Font.BOLD,20));
			panel1.add(label1);
			panel1.add(label50);
			mainPanel.add(panel1);
			
			JPanel panel2 = new JPanel();
			panel2.setLayout(new FlowLayout(FlowLayout.LEFT));
			JLabel label2 = new JLabel("1만원 : ");
			label2.setFont(new Font("맑은  고딕",Font.BOLD,20));
			JLabel label10 = new JLabel();
			label10.setFont(new Font("맑은  고딕",Font.BOLD,20));
			panel2.add(label2);
			panel2.add(label10);
			mainPanel.add(panel2);
			
			JPanel panel3 = new JPanel();
			panel3.setLayout(new FlowLayout(FlowLayout.LEFT));
			JLabel label3 = new JLabel("5천원 : ");
			label3.setFont(new Font("맑은  고딕",Font.BOLD,20));
			JLabel label5  = new JLabel();
			label5.setFont(new Font("맑은  고딕",Font.BOLD,20));
			panel3.add(label3);
			panel3.add(label5);
			mainPanel.add(panel3);
			
			JPanel panel4 = new JPanel();
			panel4.setLayout(new FlowLayout(FlowLayout.LEFT));
			JLabel label4 = new JLabel("1천원 : ");
			label4.setFont(new Font("맑은  고딕",Font.BOLD,20));
			JLabel label1000  = new JLabel();
			label1000.setFont(new Font("맑은  고딕",Font.BOLD,20));
			panel4.add(label4);
			panel4.add(label1000);
			mainPanel.add(panel2);
			
			f.add(mainPanel);
			
		}
		
	}
}
