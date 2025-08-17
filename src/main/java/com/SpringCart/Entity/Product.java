package com.SpringCart.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name="product")
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="productId")
    private int productid;
	
	@Column(name="categoryId")
	private int categoryid;
	
	@Column(name="productName")
	String productsName;
	
	@Column(name="productPrice")
	float productsPrice;
	
	@Column(name="productQuantity")
	int productQuantity;
	
}
