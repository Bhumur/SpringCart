package com.SpringCart.Service;

import java.util.List;

import com.SpringCart.Dto.ProductDto;

public interface ProductService {
	List<ProductDto> getProductList(int categoryId);
}
