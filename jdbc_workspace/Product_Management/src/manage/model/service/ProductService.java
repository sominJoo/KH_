package manage.model.service;

import java.sql.Connection;
import java.util.List;

import common.JDBCTemplate;
import manage.model.dao.ProductDAO;
import manage.model.vo.Product;
import manage.model.vo.ProductIO;

public class ProductService extends JDBCTemplate{
	private ProductDAO dao = new ProductDAO();

	public List<Product> selectAll() {
		Connection conn = getConntion();
		List<Product> list = dao.selectAll(conn);
		close(conn);
		return list;
	}

	public Product selectId(String productStr) {
		Connection conn = getConntion();
		Product product = dao.selectId(conn,productStr);
		close(conn);
		return product;
	}

	public List<Product> selectName(String productStr) {
		Connection conn = getConntion();
		List<Product> list = dao.selectName(conn,productStr);
		close(conn);
		return list;
	}

	public int insertProduct(Product product) {
		Connection conn = getConntion();
		int result = dao.insertProduct(conn,product);
		close(conn);
		return result;
	}

	public int deleteProduct(String productStr) {
		Connection conn = getConntion();
		int result = dao.deleteProduct(conn,productStr);
		close(conn);
		return result;
	}

	public int updateProduct(Product product) {
		Connection conn = getConntion();
		int result = dao.updateProduct(conn,product);
		close(conn);
		return result;
	}

	/**
	 * 입출고 
	 */
	public List<ProductIO> selectAll_IO() {
		Connection conn = getConntion();
		List<ProductIO> list = dao.selectAll_IO(conn);
		close(conn);
		return list;
	}

	public int insertProductIO(ProductIO product_io) {
		Connection conn = getConntion();
		int result = dao.insertProductIO(conn,product_io);
		close(conn);
		return result;
	}
}
