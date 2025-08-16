package com.SpringCart.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name="product")
public class Product {
	
	@ManyToOne
	@JoinColumn(name="categoryId", insertable = false, updatable = false)
	Category category;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private int productid;
	
	@Column(name="productName")
	String productsName;
	
	@Column(name="productPrice")
	float productsPrice;
	
	@Column(name="productQuantity")
	int productQuantity;
	
}
