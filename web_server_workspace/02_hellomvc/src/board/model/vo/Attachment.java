package board.model.vo;

public class Attachment {
	private int no;
	private int boardNo;
	private String originalFilename;
	private String renameFilename;
	private boolean status ; //Y | N으로 처리 => 형변환 필요
	
	
	
	@Override
	public String toString() {
		return "Attachment [no=" + no + ", boardNo=" + boardNo + ", originalFilename=" + originalFilename
				+ ", renameFilename=" + renameFilename + ", status=" + status + "]";
	}
	public Attachment(int no, int boardNo, String originalFilename, String renameFilename, boolean status) {
		super();
		this.no = no;
		this.boardNo = boardNo;
		this.originalFilename = originalFilename;
		this.renameFilename = renameFilename;
		this.status = status;
	}
	public Attachment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getOriginalFilename() {
		return originalFilename;
	}
	public void setOriginalFilename(String originalFilename) {
		this.originalFilename = originalFilename;
	}
	public String getRenameFilename() {
		return renameFilename;
	}
	public void setRenameFilename(String renameFilename) {
		this.renameFilename = renameFilename;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	
	
	 
}
