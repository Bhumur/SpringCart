package com.SpringCart.Dto;

import java.util.Set;

import com.SpringCart.Entity.Product;

import lombok.Data;

@Data
public class CategoryDto {
	int categoryId;
	String categoryName;
	String categoryDiscription;
	String categoryImg;
	Set<Product> products;
}
