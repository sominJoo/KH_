package manage.controller;

import java.util.List;

import manage.exception.ProductException;
import manage.model.service.ProductService;
import manage.model.vo.Product;
import manage.model.vo.ProductIO;
import manage.view.ProductMenu;

public class ProductController {
	private ProductService service = new ProductService();

	public List<Product> selectAll() {
		List<Product> list = null;
		try {
			list = service.selectAll();
		}catch(ProductException e) {
			new ProductMenu().dispalyError(e.getMessage());
		}
		return list;
	}

	public Product selectId(String productStr) {
		Product product = null;
		try {
			product = service.selectId(productStr);
		}catch(ProductException e) {
			new ProductMenu().dispalyError(e.getMessage());
		}
		return product;
	}

	public List<Product> selectName(String productStr) {
		List<Product> list = null;
		try {
			list = service.selectName(productStr);
		}catch(ProductException e) {
			new ProductMenu().dispalyError(e.getMessage());
		}
		return list;
	}

	public int insertProduct(Product product) {
		int result = 0;
		try {
			result = service.insertProduct(product);
		} catch (ProductException e) {
			new ProductMenu().dispalyError(e.getMessage());
		}
		return result;
	}

	public int deleteProduct(String productStr) {
		int result = 0;
		try {
			result = service.deleteProduct(productStr);
		} catch (ProductException e) {
			new ProductMenu().dispalyError(e.getMessage());
		}
		return result;
	}

	public int updateProduct(Product product) {
		int result = 0;
		try {
			result = service.updateProduct(product);
		} catch (ProductException e) {
			new ProductMenu().dispalyError(e.getMessage());
		}
		return result;
	}

	public List<ProductIO> selectAll_IO() {
		List<ProductIO> list = null;
		try {
			list = service.selectAll_IO();
		}catch(ProductException e) {
			new ProductMenu().dispalyError(e.getMessage());
		}
		return list;
	}

	public int insertProductIO(ProductIO product_io) {
		int result = 0;
		try {
			result = service.insertProductIO(product_io);
		} catch (ProductException e) {
			new ProductMenu().dispalyError(e.getMessage());
		}
		return result;
	}
}
