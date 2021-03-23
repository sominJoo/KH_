package com.java.kiosk.view;

import java.awt.BorderLayout;
import java.awt.Color;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.border.LineBorder;
import javax.swing.border.TitledBorder;

import com.java.kiosk.cafeteria.Cafeteria;

public class TablePanel extends JPanel{
	public TablePanel(JFrame f, int w, int h) {
		
		JPanel tPanel = new JPanel();
		tPanel.setBounds(700, 0, w, h);						//패널 사이즈 설정
		tPanel.setBorder(new TitledBorder(
				new LineBorder(Color.black,2),"장바구니"));	//패널 경계선 설정
		tPanel.setLayout(new BorderLayout());
		
		
		
		JTable menuTable = new JTable(Cafeteria.model);
		JScrollPane sc = new JScrollPane(menuTable);
		tPanel.add(sc);
		f.add(tPanel);
	}
	
	
}
