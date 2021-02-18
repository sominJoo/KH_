package manage.model.vo;

public class Product {
	private String product_id  ;
	private String p_name  ;
	private int price;
	private String description;
	private int stock;
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(String product_id, String p_name, int price, String description, int stock) {
		super();
		this.product_id = product_id;
		this.p_name = p_name;
		this.price = price;
		this.description = description;
		this.stock = stock;
	}
	@Override
	public String toString() {
		return "상품 ID :" + product_id + ", 이름 :" + p_name + ", 가격 :" + price + ", 설명 :"
				+ description + ", 재고 :" + stock;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	
}
