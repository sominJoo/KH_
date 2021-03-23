package com.java.kiosk.view;

import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.border.LineBorder;
import javax.swing.border.TitledBorder;

import com.java.kiosk.cafeteria.Cafeteria;
import com.java.kiosk.controller.AdminController;
import com.java.kiosk.controller.CafeteriaController;
import com.java.kiosk.model.vo.Menu;

public class MenuPanel extends JPanel{
	private CafeteriaController c = new CafeteriaController();
	public static final int MAX = 16;
	public static int first=0;
	public static List<Menu> list =  AdminFrame.menuList;
	
	public MenuPanel(JFrame f, int w, int h) {
		JPanel mPanel = new JPanel();
		mPanel.setBounds(0, 0, w, h);					//패널 사이즈 설정
		mPanel.setBorder(new TitledBorder(new LineBorder(Color.black,2),"메뉴"));	//패널 경계선 설정		
		mPanel.setLayout(new GridLayout(4,4,13, 13));		//flowlayout으로 왼쪽부터 정력, 10픽셀씩 띄움
		
		JButton[] menuBtn = new JButton[MAX];
		for(int i = 0; i<MAX; i++) {
			//메뉴버튼 text 설정
			if(i >= list.size()) {
				menuBtn[i] = new JButton("-준비중-");
				menuBtn[i].setSize(170, 170);
				menuBtn[i].addActionListener(new ActionListener() {
					@Override
					public void actionPerformed(ActionEvent e) {
						// TODO Auto-generated method stub
						JOptionPane.showMessageDialog(null, "준비중은 선택하실 수 없습니다.");
					}
				});
				mPanel.add(menuBtn[i]);
				
			}
			else {
				String menu = list.get(i).getMenu();
				int price =list.get(i).getPrice();
				int quantity = list.get(i).getQuantity();
				String btnText = "<HTML><body><center>"+menu + "<br>"+ Integer.toString(price)+"원<br>" +Integer.toString(quantity)+"개</center><body></HTML>";
				menuBtn[i] = new JButton(btnText);
				//페널에 메뉴 버튼 추가
				menuBtn[i].setSize(160, 160);
				menuBtn[i].addActionListener(new  ActionListener() {
					@Override
					public void actionPerformed(ActionEvent e) {
						// TODO Auto-generated method stub
						c.add(menu,price);
						PaymentPanel.totalLabel.setText(c.total());		//버튼 눌릴시 총액 라벨 갱신
						if(first == 0)
							c.timer();
						first++;
					}
					
				});
				}
				mPanel.add(menuBtn[i]);
			}
			
		f.add(mPanel);
	}

	
}
