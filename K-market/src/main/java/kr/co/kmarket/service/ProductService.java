package kr.co.kmarket.service;

import java.util.List;

import kr.co.kmarket.dao.ProductDAO;
import kr.co.kmarket.dto.ProductDTO;

public enum ProductService {
	
	INSTANCE;
	
	// productDAO
	private ProductDAO dao = ProductDAO.getInstance();
	
	// service
	public void insertProduct(ProductDTO dto) {
		dao.insertProduct(dto);
	}
	public ProductDTO selectProduct(int prodNo) {
		return dao.selectProduct(prodNo);
	}
	public List<ProductDTO> selectProducts(String cate1,String cate2) {
		return dao.selectProducts(cate1,cate2);
	}
	public void updateProduct(ProductDTO dto) {
		dao.updateProduct(dto);
	}
	public void deleteProduct(int prodNo) {
		dao.deleteProduct(prodNo);
	}
}
