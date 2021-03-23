package kh.java.gui.swing.event;

import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionListener;
import java.awt.event.MouseWheelEvent;
import java.awt.event.MouseWheelListener;

import javax.swing.*;

import kh.java.gui.util.MyUtil;

/**
 * event -> os -> jvm -> event분배 쓰레드 -> 각 component event handler 메소드 호출
 * 1. 저수준 이벤트
 *  - key event
 *  - mouse
 *  - focus
 *  -window
 * 2. 고수준 Semantic 이벤트(컴포넌트별 처리)
 *  -action
 *  -item
 *  -adjustment
 *
 */
public class LowLevelEventTest extends JFrame{
	public LowLevelEventTest(int w, int h, String title) {
		MyUtil.init(this, w, h, title);
		JPanel panel = new JPanel();
		JLabel label = new JLabel("패널");
		panel.add(label);
		panel.addMouseListener(new MyMouseListener());
//		panel.addMouseListener(new MyKeyListener());
		add(panel);
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		LowLevelEventTest l= new LowLevelEventTest(300, 300, "저수준 이벤트");
	}
	public class MyMouseListener extends MouseAdapter{
		//interface 사용시 내부 추상 클래스를 다 구현해야하는 단점을 제거
		@Override
		public void mouseClicked(MouseEvent e) {
			// TODO Auto-generated method stub
			System.out.println("마우스 클릭");
		}
		
	}
	public class MyKeyListener2 extends KeyAdapter{
		@Override
		public void keyTyped(KeyEvent e) {
			// TODO Auto-generated method stub
			
		}

	}
	public class MyKeyListener implements KeyListener{

		@Override
		public void keyTyped(KeyEvent e) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void keyPressed(KeyEvent e) {
			// TODO Auto-generated method stub
			System.out.println(e.getKeyCode()== KeyEvent.VK_0);
			//getText();
		}

		@Override
		public void keyReleased(KeyEvent e) {
			// TODO Auto-generated method stub
		}	
	}
	
	
	public class mouseListen implements MouseListener,MouseWheelListener,MouseMotionListener{

		@Override
		public void mouseClicked(MouseEvent e) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void mousePressed(MouseEvent e) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void mouseReleased(MouseEvent e) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void mouseEntered(MouseEvent e) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void mouseExited(MouseEvent e) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void mouseDragged(MouseEvent e) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void mouseMoved(MouseEvent e) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void mouseWheelMoved(MouseWheelEvent e) {
			// TODO Auto-generated method stub
			
		}
		
	}

}
