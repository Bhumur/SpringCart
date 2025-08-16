package com.SpringCart.Service;

import java.util.List;

import com.SpringCart.Dto.CategoryDto;

public interface CategoryService {
	CategoryDto getCategoryById(int id);
	CategoryDto getCategoryByName(String name);
	boolean addCategory(String name, String discription, String image);
	List<CategoryDto> allCategory();
}
