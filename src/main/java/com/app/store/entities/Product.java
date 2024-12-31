package com.app.store.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.Id;



@Entity
@Table(name = "product_details")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "sno")
	private int id;
	@Column(name = "product_name")
	private String name;
	@Column(name = "product_description")
	private String description;
	@Column(name = "product_price")
	private double price;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Product(int id, String name, String description, double price) {
		super();
		id = id;
		this.name = name;
		this.description = description;
		this.price = price;
	}
	public Product() {
		
	}
	@Override
	public String toString() {
		return "Product [Id=" + id + ", name=" + name + ", description=" + description + ", price=" + price + "]";
	}
	
}
