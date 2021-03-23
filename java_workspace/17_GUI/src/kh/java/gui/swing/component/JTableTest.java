package kh.java.gui.swing.component;

import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.event.TableModelEvent;
import javax.swing.event.TableModelListener;
import javax.swing.table.TableModel;

import kh.java.gui.util.MyUtil;

/**
 * JTable - tableModel 데이터 ㅓ장되는 객체
 * JScrollPane(JTable에 추가)
 * @author ddomin
 *
 */
public class JTableTest extends JFrame{

	public JTableTest(int w, int h, String title) {
		// TODO Auto-generated constructor stub
		MyUtil.init(this, w, h, title);
		Object[] column = {"이름","주소","나이","결혼여부 "};
		Object[][] row = {
				{"홍길동", "서울",32, false},
				{"신사임당", "서울",32, true},
				{"세종", "서울",32, true}
		};
		JTable table = new JTable(row,column);
		table.setAutoCreateRowSorter(true);
		
		JScrollPane scroll = new JScrollPane(table);
		TableModel model = table.getModel();
		model.addTableModelListener(new TableModelListener() {
			@Override
			public void tableChanged(TableModelEvent e) {
				// TODO Auto-generated method stub
				int rowNum = e.getFirstRow();
				int col = e.getColumn();
				System.out.println(rowNum + ","+col);
				Object data = model.getValueAt(rowNum, col);	//변경된 데이터 감지
				System.out.println(data);
			}
		});
		
		add(scroll);
}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new JTableTest(300,200,"table test").setVisible(true);
	}

}
