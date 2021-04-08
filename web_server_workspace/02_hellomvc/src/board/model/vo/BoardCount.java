package board.model.vo;

import java.sql.Date;

public class BoardCount extends Board{
	private int boardCount;

	public int getBoardCount() {
		return boardCount;
	}

	public void setBoardCount(int boardCount) {
		this.boardCount = boardCount;
	}

	public BoardCount() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BoardCount(int no, String title, String writer, String content, Date regDate, int readCount,
			Attachment attach) {
		super(no, title, writer, content, regDate, readCount, attach);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "BoardCount [" +  ", getBoardCount()=" + getBoardCount() + ", getNo()=" + getNo()
				+ ", getTitle()=" + getTitle() + ", getWriter()=" + getWriter() + ", getContent()=" + getContent()
				+ ", getRegDate()=" + getRegDate() + ", getReadCount()=" + getReadCount() + ", getAttach()="
				+ getAttach() + "]";
	}
	
	
}
