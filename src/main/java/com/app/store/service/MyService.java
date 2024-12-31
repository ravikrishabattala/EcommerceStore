package com.app.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.store.dao.ProductDaoImple;
import com.app.store.entities.Product;

@Service
public class MyService {
	
	@Autowired
	private ProductDaoImple productdao;

	public ProductDaoImple getProductdao() {
		return productdao;
	}

	public void setProductdao(ProductDaoImple productdao) {
		this.productdao = productdao;
	}
	
	public int save(Product product) {
		int r = this.productdao.insert(product);
		return r;
	}
	
	public Product getProduct(int id) {
		Product product = this.productdao.getProduct(id);
		return product;
	}
	
	public void deleteProduct(int id) {
		this.productdao.deleteProduct(id);
	}
	
	public void updateProduct(Product product) {
		this.productdao.updateProduct(product);
	}
	
	public List<Product> getAllProducts(){
		List<Product> products = this.productdao.getAllProducts();
		return products;
	}
	

}
