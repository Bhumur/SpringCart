package com.SpringCart.Dto;

import lombok.Data;

@Data
public class ProductDto {
	 private int productid;
	private int categoryid;
	String productsName;
	float productsPrice;
	int productQuantity;
}
