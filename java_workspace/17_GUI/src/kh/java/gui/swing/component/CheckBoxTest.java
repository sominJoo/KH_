package kh.java.gui.swing.component;

import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JCheckBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

import kh.java.gui.util.MyUtil;

public class CheckBoxTest extends JFrame{
	JLabel resultLabel;
	public CheckBoxTest(int w, int h, String title) {
		// TODO Auto-generated constructor stub
		MyUtil.init(this, w, h, title);
		topPanel();
		selectPanel();
		resultPanel();
	}

	private void topPanel() {
		// TODO Auto-generated method stub
		JPanel panel = new JPanel();
		JLabel label = new JLabel("파일을 선택하세요");
		panel.add(label);
		add(panel, BorderLayout.NORTH);
			
	}

	private void selectPanel() {
		// TODO Auto-generated method stub
		JPanel panel = new JPanel();
		JCheckBox[] chks= {
				new JCheckBox("바나나"),
				new JCheckBox("딸기"),
				new JCheckBox("키위")
		};
		for(JCheckBox jc : chks)
			panel.add(jc);
		
		String labelName ="";
		for(JCheckBox jc : chks){
			jc.addActionListener(new ActionListener() {
				@Override
				public void actionPerformed(ActionEvent e) {
					// TODO Auto-generated method stub
					List<String> checkedList = new ArrayList<>();
					for(JCheckBox chk: chks) {
						if(chk.isSelected())
							checkedList.add(chk.getText());
					}
					if(checkedList.isEmpty())
						resultLabel.setText("아무것도 선택하지 않았습니다.");
					else
						resultLabel.setText(checkedList +"를 선택하셨습니다.");
				}
			});
		}
		
		add(panel);
	}

	private void resultPanel() {
		// TODO Auto-generated method stub
		JPanel panel = new JPanel();
		resultLabel = new JLabel("아무것도 선택하지 않았습니다.");
		panel.add(resultLabel);
		add(panel,BorderLayout.SOUTH);
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new CheckBoxTest(300,200,"체크박스").setVisible(true);
	}

}
