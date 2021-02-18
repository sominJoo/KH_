package manage.model.vo;

import java.sql.Date;

public class ProductIO {
	private int ioNum ;
	private String product_id;
	private Date ioDate;
	private int	amount;
	private String status;
	public ProductIO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProductIO(int ioNum, String product_id, Date ioDate, int amount, String status) {
		super();
		this.ioNum = ioNum;
		this.product_id = product_id;
		this.ioDate = ioDate;
		this.amount = amount;
		this.status = status;
	}
	@Override
	public String toString() {
		return "번호: " + ioNum + ",\t상품 ID :" + product_id + ",\t입출고 날짜 :" + ioDate + ",\t수량 : " + amount
				+ ",\t상태 :" + status;
	}
	public int getIoNum() {
		return ioNum;
	}
	public void setIoNum(int ioNum) {
		this.ioNum = ioNum;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public Date getIoDate() {
		return ioDate;
	}
	public void setIoDate(Date ioDate) {
		this.ioDate = ioDate;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
