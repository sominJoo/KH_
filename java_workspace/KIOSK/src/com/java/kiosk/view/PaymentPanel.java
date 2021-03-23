package com.java.kiosk.view;

import java.awt.BorderLayout;
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
import javax.swing.border.TitledBorder;

import com.java.kiosk.cafeteria.Cafeteria;
import com.java.kiosk.controller.CafeteriaController;

public class PaymentPanel extends JPanel{

	private CafeteriaController c = new CafeteriaController();
	
	public static JLabel totalLabel ;
	public static JLabel timerLabel ;
	public PaymentPanel(JFrame f, int w, int h) {
		// TODO Auto-generated constructor stub
		//전체Panel
		JPanel pPanel = new JPanel();
		pPanel.setBounds(700, 500, w, h);						//패널 사이즈 설정
		pPanel.setBorder(new TitledBorder(
				new LineBorder(Color.black,2),"결제"));		//패널 경계선 설정
		pPanel.setLayout(new GridLayout(3,0));				

		
		
		//총액 panel
		JPanel tPanel = new JPanel();
		JLabel label = new JLabel("총액 : ");
		totalLabel = new JLabel("0");
		tPanel.setLayout(new FlowLayout(FlowLayout.LEFT,10,10));
		tPanel.add(label);
		tPanel.add(totalLabel);
		
		JPanel timePanel = new JPanel();
//		timePanel.setLayout(new BorderLayout());
		timerLabel = new JLabel("2분안에 결정해주세요!");
		timePanel.add(timerLabel);
		
		
		
		//결제Button
		JPanel btnPanel = new JPanel();
		JButton payBtn = new JButton("결제");
		payBtn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				//결제페이지 연결
				
			}
		});
		
		//취소Button : 전체 삭제
		JButton delectBtn = new JButton("취소");
		delectBtn.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				Cafeteria.model.setNumRows(0);
				totalLabel.setText("0");
			}
		});
		btnPanel.setLayout(new GridLayout(0,2,30,30));
		btnPanel.add(payBtn);
		btnPanel.add(delectBtn);
		
		pPanel.add(timePanel);
		pPanel.add(tPanel);
		pPanel.add(btnPanel);
		f.add(pPanel);
		
	}
	
}
