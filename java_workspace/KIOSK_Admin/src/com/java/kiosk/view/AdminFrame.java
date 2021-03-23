package com.java.kiosk.view;

import java.awt.BorderLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import javax.swing.AbstractButton;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.event.TableModelListener;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;

import com.java.kiosk.controller.AdminController;
import com.java.kiosk.model.vo.Menu;
import com.java.kiosk.run.MainProcess;
import com.java.kiosk.util.MyUtil;




public class AdminFrame extends JFrame{
	
	public static List<Menu> menuList = new ArrayList<>();
	public List<Menu> loadList = AdminController.loadMenuList().stream().distinct().collect(Collectors.toList()); // 저장된 파일 불러온 리스트
	public static DefaultTableModel adminModel;
	public static int money;
	public static final int MAX =16;
	public AdminFrame(int w, int h, String title) {
		MyUtil.init(this, w, h, title);
		
		//컬럼 정보
		Object[] columnNames = {"메뉴", "수량", "가격"};
		//빈 테이블을 만들기 위한  데이터 관리 객체
		adminModel = new DefaultTableModel(columnNames, 0);
		JTable menuTable = new JTable(adminModel);
		JScrollPane scrollPane = new JScrollPane(menuTable);
		
		add(scrollPane);
		
		
		// 테이블 아래쪽에 데이터 입력 할수있는 패널
		JPanel btnPanel = new JPanel();
		btnPanel.setLayout(new GridLayout(4, 0));//버튼크기 조절가능
		
		JPanel panel = new JPanel();
		JTextField menuText = new JTextField(20);
		JTextField quantityText = new JTextField(15);
		JTextField priceText = new JTextField(15);
		JTextField moneyText = new JTextField(15);
		
		panel.add(new JLabel("메뉴"));
		panel.add(menuText);
		
		panel.add(new JLabel("수량"));
		panel.add(quantityText);
		
		panel.add(new JLabel("가격"));
		panel.add(priceText);
		
		panel.add(new JLabel("준비금"));
		panel.add(moneyText);
		
		btnPanel.add(panel);
		
		
		//추가  삭제 버튼 
		JPanel panel2 = new JPanel();
		JButton btnload = new JButton("불러오기");
		JButton btnAdd = new JButton("Add");
		JButton btnDel = new JButton("Delete");
		JButton btnStudent = new JButton("학생용");
		panel2.add(btnload);
		panel2.add(btnAdd);
		panel2.add(btnDel);
		panel2.add(btnStudent);
		btnPanel.add(panel2);
		
		//불러오기 button
		btnload.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				for(int i = 0 ;i < loadList.size(); i++) {
					String menu = loadList.get(i).getMenu();
					int quantity = loadList.get(i).getQuantity();
					int price = loadList.get(i).getPrice();
					 
					Object[] rowData  = {menu,quantity,price};
				
					adminModel.addRow(rowData);//
					menuList = loadList;		//loadList가 menuList가 된다.
				}
			}
		});
			
		//table에 메뉴 추가 button
		btnAdd.addActionListener(new ActionListener() {	
			@Override
			public void actionPerformed(ActionEvent e) {
				if(menuList.size() <= 16 && menuList.size() >= 0 ) {
					String[] rows = new String[3];
					rows[0] = menuText.getText();
					rows[1] = quantityText.getText();
					rows[2] = priceText.getText();
					adminModel.addRow(rows);// 한줄 단위로만 대입 가능
					menuList.add(new Menu(rows[0], Integer.parseInt(rows[1]), Integer.parseInt(rows[2])));//메뉴리스트에 추가하기
					
					//입력후 필드 값 제거
					menuText.setText("");
					quantityText.setText("");
					priceText.setText("");
				
				//메뉴 16개 넘어가면 더는 추가 할 수 없다는 문구 띄우기 완료
				}else {
					if(menuList.size() > MAX)
						JOptionPane.showMessageDialog(null, "메뉴 입력을 초과 하셨습니다!",
							"경고",JOptionPane.ERROR_MESSAGE);
				}
			}	
		});
		
		//메뉴 삭제 Button
		btnDel.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				// 선택한 줄(row)의 번호 알아내기
				int rowIndex = menuTable.getSelectedRow();
				if (rowIndex == -1) return;
				adminModel.removeRow(rowIndex);
				menuList.remove(rowIndex); // 데이터 지우기
				rowIndex = menuList.size();//의논하기 
			}
		});
		
		//CafeteriaFrame으로 이동 + menu Txt파일로 저장
		btnStudent.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				//여기 버튼을 눌러서 학생용으로 이동
				if(!adminModel.equals(menuList)) {
					AdminController.insertMenu(menuList);
					JOptionPane.showMessageDialog(null, "정상 등록 되었습니다");
					 
					new CafeteriaFrame().setVisible(true);
				}
			}
		}); 
		
		add(btnPanel, BorderLayout.SOUTH);
		
	}
}
	
	

