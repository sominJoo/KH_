package kh.java.gui.swing.container.layout;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.*;

import kh.java.gui.util.MyUtil;

public class NullLayoutTest extends JFrame{
	private JPasswordField pwd;
	private JTextField id ;
	public NullLayoutTest(int w, int h, String title) {
		MyUtil.init(this, w, h, title);
		setLayout(null);
		
		JLabel labelId = new JLabel("아이디 : ");
		labelId.setBounds(50,100,60,50);
		add(labelId);
		
		id = new JTextField();
		id.setBounds(110,100,200,50);
		add(id);
		
		
		JLabel labelPwd = new JLabel("비밀번호 : ");
		labelPwd.setBounds(50,160,60,50);
		add(labelPwd);
		
		//비밀번호 유출 방지
		pwd = new JPasswordField();
		pwd.setBounds(110,160,200,50);
		add(pwd);
		
		JButton btn = new JButton("확인");
		btn.setBounds(320,100,100,110);
		//버튼 이벤트
		btn.addActionListener(new LoginListener());

//		btn.addActionListener(new ActionListener() {
//			@Override
//			public void actionPerformed(ActionEvent e) {
//				// TODO Auto-generated method stub
//				JOptionPane.showMessageDialog(null, id.getText()+"\n"+pwd.getText());
//			}
//		});
		add(btn);
	}
	/**
	 * JButton용 action event handler 클래스 작성
	 */
	public class LoginListener implements ActionListener{

		@Override
		public void actionPerformed(ActionEvent e) {
			// TODO Auto-generated method stub
			JOptionPane.showMessageDialog(null, id.getText()+"\n"+pwd.getText());
		}
		
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new NullLayoutTest(500,500,"로그인").setVisible(true);
	}

}
