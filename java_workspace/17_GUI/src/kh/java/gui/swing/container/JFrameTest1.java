package kh.java.gui.swing.container;

import javax.swing.*;
import javax.swing.JLabel;

/**
 * JFrame 객체생성 
 *  1. new JFrame() 직접 객체 생성하기
 *  2. JFrame 상속한 커스텀 클래스 작성 후 객체 생성
 */
public class JFrameTest1 {
	public static void main(String[] args) {
		JFrame f = new JFrame();
		//제목지정
		f.setTitle("Hello Swing");
		
		//윈도우 크기, 위치 설정
		f.setSize(300, 200);
		f.setLocation(0,0);
		
		//스크린 가운데 띄우기
		f.setLocationRelativeTo(null);
		
		//x버튼 프로그램 종료 처리
		f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		//자식 컴포넌트 : 컨테이너에 포함된 컴포넌트
		f.add(new JLabel("안녕"));
		
		//시각화 처리
		f.setVisible(true);
	}
}
