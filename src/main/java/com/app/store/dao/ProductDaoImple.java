package com.app.store.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.app.store.entities.Product;

@Repository
public class ProductDaoImple {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional
	public int insert(Product product) {
		int r = (int) this.hibernateTemplate.save(product);
		return r;
	}
	
	public Product getProduct(int id) {
		Product product = this.hibernateTemplate.get(Product.class, id);
		return product;
	}
	
	@Transactional
	public void deleteProduct(int id) {
		this.hibernateTemplate.delete(getProduct(id));
	}
	
	@Transactional
	public void updateProduct(Product product) {
		this.hibernateTemplate.update(product);
	}
	
	public List<Product> getAllProducts(){
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
}
