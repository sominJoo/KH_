package kh.java.gui.swing.event;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

import kh.java.gui.util.MyUtil;



/**
 * 이벤트 리스너를 bind 하는 법
 * 1.내부클래스로 선언해서 객체 생성
 * 2. 익명클래스 선언과 동시에 객체 생성(추상클래수, 인터페이스도 new 연산자 사용가능)
 * 3. JFrame커스텀 클래스에서 Listener구현
 * @author ddomin
 *
 */
public class ActionEventTest extends JFrame{
	JTextField input;
	public ActionEventTest(int w, int h, String title) {
		// TODO Auto-generated constructor stub
		MyUtil.init(this, w, h, title);
		
		JPanel panel  = new JPanel();
		JLabel label = new JLabel("사용자 입력 : ");
		
		input= new JTextField(10);
		
		//input컴포넌트에 ActionEventHandler 바인딩
//		input.addActionListener(new MyActionListener());
		
		ActionListener listener = new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				input.setText("");
			}
		};
		panel.add(label);
		panel.add(input);
		add(panel);
	}
	
	public class MyActionListener implements ActionListener{

		@Override
		public void actionPerformed(ActionEvent e) {
			// TODO Auto-generated method stub
			JOptionPane.showMessageDialog(null, input.getText());
			input.setText("");
			input.requestFocus(); //바로 입력가능하게 focus를 가져오기
		}
		
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new ActionEventTest(300,200,"액션 이벤트").setVisible(true);
	}

}
