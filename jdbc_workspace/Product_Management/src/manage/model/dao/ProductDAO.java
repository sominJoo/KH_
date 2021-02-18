package manage.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import common.JDBCTemplate;
import manage.exception.ProductException;
import manage.model.vo.Product;
import manage.model.vo.ProductIO;
public class ProductDAO extends JDBCTemplate{
	private Properties prop =new Properties();
	public ProductDAO(){
		try {
			prop.load(new FileReader("resources/product-query.properties"));
		} catch (FileNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
	
	/**
	 * 1.전체조회
	 * @param conn
	 * @return
	 */
	public List<Product> selectAll(Connection conn) {
		List<Product> list = new ArrayList<Product>();
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		String sql = prop.getProperty("selectAll");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Product p = new Product();
				p.setProduct_id(rs.getString("product_id"));
				p.setP_name(rs.getString("p_name"));
				p.setPrice(rs.getInt("price"));
				p.setDescription(rs.getString("description"));
				p.setStock(rs.getInt("stock"));
				list.add(p);
			}
		} catch (SQLException e) {
			throw new ProductException("전체 조회 오류", e);
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return list;
	}

	public Product selectId(Connection conn, String productStr) {
		// TODO Auto-generated method stub
		Product product = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		String sql = prop.getProperty("selectId");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, productStr);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				product = new Product();
				product.setProduct_id(rs.getString("product_id"));
				product.setP_name(rs.getString("p_name"));
				product.setPrice(rs.getInt("price"));
				product.setDescription(rs.getString("description"));
				product.setStock(rs.getInt("stock"));
			}
		} catch (SQLException e) {
			throw new ProductException("ID 조회 오류", e);
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return product;
	}

	public List<Product> selectName(Connection conn, String productStr) {
		List<Product> list = new ArrayList<Product>();
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		String sql = prop.getProperty("selectName");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, productStr);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Product p = new Product();
				p.setProduct_id(rs.getString("product_id"));
				p.setP_name(rs.getString("p_name"));
				p.setPrice(rs.getInt("price"));
				p.setDescription(rs.getString("description"));
				p.setStock(rs.getInt("stock"));
				list.add(p);
			}
		} catch (SQLException e) {
			throw new ProductException("이름 조회 오류", e);
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return list;
	}

	public int insertProduct(Connection conn, Product product) {
		PreparedStatement pstmt = null;
		int result =0;
		String sql = prop.getProperty("insertProduct");
		try {			
			//4.미완성 쿼리, 값대입
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, product.getProduct_id());
			pstmt.setString(2, product.getP_name());
			pstmt.setInt(3, product.getPrice());
			pstmt.setString(4, product.getDescription());
			pstmt.setInt(5, product.getStock());
			
			result = pstmt.executeUpdate();
			
			if(result > 0) commit(conn);
			else rollback(conn);
		} catch (SQLException e) {
			throw new ProductException("상품 추가 오류", e);
		}finally{
			//자원 반납(생성의 역순) 따로 해야 안전함.
			close(pstmt);	
		}
		return result;
	}

	public int deleteProduct(Connection conn, String productStr) {
		PreparedStatement pstmt = null;
		int result =0;
		String sql = prop.getProperty("deleteProduct");
		try {			
			//4.미완성 쿼리, 값대입
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,productStr);
			
			result = pstmt.executeUpdate();
			
			if(result > 0) commit(conn);
			else rollback(conn);
			
		} catch (SQLException e) {
			throw new ProductException("상품 삭제 오류", e);
		}finally{
			//자원 반납(생성의 역순) 따로 해야 안전함.
			close(pstmt);	
		}
		return result;
	}

	public int updateProduct(Connection conn, Product product) {
		String sql =null;
		int result =0 ;
		
		if(product.getP_name() != null) {
			sql =prop.getProperty("updateProduct_pname");
			result = doPstmt(conn, sql, product.getP_name(), product.getProduct_id());
		}
		else if(product.getPrice()!= 0) {
			sql =prop.getProperty("updateProduct_Price");
			result = doPstmt(conn, sql, product.getPrice(), product.getProduct_id());
		}
		else if(product.getDescription()!= null) {
			sql =prop.getProperty("updateProduct_Description");
			result = doPstmt(conn, sql, product.getDescription(), product.getProduct_id());
		}
		return result;
	}

	public int doPstmt(Connection conn, String sql, String str, String getProduct_id) {
		int result = 0;
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, str);
			pstmt.setString(2, getProduct_id);
			result = pstmt.executeUpdate();
			
			if(result > 0) commit(conn);
			else rollback(conn);
			
		} catch (SQLException e) {
			throw new ProductException("정보 변경 오류", e);
		}finally {
			close(pstmt);
		}
		return result;
	}

	public int doPstmt(Connection conn, String sql, int price, String getProduct_id) {
		int result = 0;
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, price);
			pstmt.setString(2, getProduct_id);
			result = pstmt.executeUpdate();
			
			if(result > 0) commit(conn);
			else rollback(conn);
			
		} catch (SQLException e) {
			throw new ProductException("정보 변경 오류", e);
		}finally {
			close(pstmt);
		}
		return result;
	}

	public List<ProductIO> selectAll_IO(Connection conn) {
		List<ProductIO> list = new ArrayList<ProductIO>();
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		String sql = prop.getProperty("selectAll_IO");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ProductIO p = new ProductIO();
				p.setIoNum(rs.getInt("io_no"));
				p.setProduct_id(rs.getString("product_id"));
				p.setIoDate(rs.getDate("iodate"));
				p.setAmount(rs.getInt("amount"));
				p.setStatus(rs.getString("status"));
				list.add(p);
			}
		} catch (SQLException e) {
			throw new ProductException("전체 조회 오류", e);
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return list;
	}

	public int insertProductIO(Connection conn, ProductIO product_io) {
		PreparedStatement pstmt = null;
		int result =0;
		String sql = prop.getProperty("insertProductIO");
		try {			
			//4.미완성 쿼리, 값대입
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, product_io.getProduct_id());
			pstmt.setInt(2, product_io.getAmount());
			pstmt.setString(3, product_io.getStatus());

			result = pstmt.executeUpdate();
			
			if(result > 0) commit(conn);
			else rollback(conn);
		} catch (SQLException e) {
			throw new ProductException("상품 추가 오류", e);
		}finally{
			//자원 반납(생성의 역순) 따로 해야 안전함.
			close(pstmt);	
		}
		return result;
	}
}
