package com.SpringCart.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringCart.Dto.ProductDto;
import com.SpringCart.Entity.Product;
import com.SpringCart.Repositry.ProductRepositry;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductRepositry productRepo;
	
	@Override
	public List<ProductDto> getProductList(int categoryId) {
		List<Product> list = productRepo.findAllByCategoryid(categoryId);
		List<ProductDto> resultList = new ArrayList<ProductDto>();
		for(Product p : list) {
			ProductDto pdto = new ProductDto();
			pdto.setCategoryid(p.getCategoryid());
			pdto.setProductid(p.getProductid());
			pdto.setProductQuantity(p.getProductQuantity());
			pdto.setProductsName(p.getProductsName());
			pdto.setProductsPrice(p.getProductsPrice());
			resultList.add(pdto);
		}
		return resultList;
	}

}
