package com.java.kiosk.cafeteria;

import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.stream.Collectors;

import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

import com.java.kiosk.controller.AdminController;
import com.java.kiosk.model.vo.Menu;
import com.java.kiosk.model.vo.SalesMenu;
import com.java.kiosk.view.MenuPanel;
import com.java.kiosk.view.PaymentPanel;

public class Cafeteria {
	public static List<Menu> menuList =  loadMenuList().stream().distinct().collect(Collectors.toList());
	public static ArrayList<SalesMenu> salesList = new ArrayList<>();//이것도 같게 해야 할것 같다.
	
	public static Object[] header = {"이름", "수량","가격"};
	public static DefaultTableModel model = new DefaultTableModel(header,0);
	
	int time = 120;	
	
	public Cafeteria() {
		
	}
	
//	public void menuAdd(){
//		List<Menu> menu2 = loadMenuList().stream().distinct().collect(Collectors.toList());
//		Object[] header = {"메뉴","수량", "가격"}; 
//		for(int i = 0 ;i < menu2.size(); i++) {
//			String menu = menu2.get(i).getMenu();
//			int price = menu2.get(i).getPrice();
//			int quantity = menu2.get(i).getQuantity();
//			
//			Object[] rowData  = {menu,price,quantity};
//		
//			model.addRow(rowData);//
//			menu2 = menuList;
//		}
//	}
	
	
	//table에 row 추가 메소드(menuPanel에서 호출해서 TablePanel에서 사용함)
	public void addMenu(String menu, int price) {
		int quantity_first =1;
		//같은 메뉴를 찾아 수량을 변경하는 메뉴
		Object[] rowData = {menu,quantity_first,price};
		int count = model.getRowCount();
		boolean check = true;
		if(count >=1) {//row가 하나라도 있으면
			for(int i = 0 ;i<count ; i++) {				//모든 row 검사
				if(menu.equals(model.getValueAt(i, 0))) {//메뉴가 같으면 해당 row의 수량 변경
					check = false; 						//값변경이 일어남
					int quantity = Integer.parseInt(model.getValueAt(i, 1).toString());
					if(quantity>=5) {
						JOptionPane.showMessageDialog(null, "식권은 5개까지 구매가능합니다");
						break;
					}
					model.setValueAt(++quantity, i, 1);	//수량 변경
					model.setValueAt(quantity*price ,i,2);//수량에 따라 가격 변경
				}
			}
			if(check)		//값변경이 안일어났다면
				model.addRow(rowData);
		}
		else {
			model.addRow(rowData);
		}
		
	}
	
	
	//총액 계산
	public int totalPrice() {
		int total=0;
		for(int i =0 ;i < model.getRowCount(); i++) {
			total += Integer.parseInt(model.getValueAt(i,2).toString());
		}
		return total;
	}
	
	//타이머
	public void timerStart() {
		//2분 타이머
		Timer m_timer = new Timer();
		TimerTask m_task = new TimerTask() {
			@Override
			public void run() {
				// TODO Auto-generated method stub
				String name = (time/60) +"분 "+(time%60)+"초 남았습니다.";
				PaymentPanel.timerLabel.setText(name);
				time--;
				if(time ==0) {
					m_timer.cancel();
					JOptionPane.showMessageDialog(null, "시간 초과! 다시 결정 해주세요.");
					
					//초기화
					model.setNumRows(0);
					time =120;
					MenuPanel.first =0;
					PaymentPanel.totalLabel.setText("0");
					PaymentPanel.timerLabel.setText("2분안에 결정해주세요!");
				}
			}
		};
		m_timer.schedule(m_task, 120,1000); //1초마다 run 반복
	}
	
	
	
	protected static List<Menu> loadMenuList() {
		List<Menu> list = AdminController.loadMenuList();//저장한거 불러오기 
		
		return list;
	}
}
