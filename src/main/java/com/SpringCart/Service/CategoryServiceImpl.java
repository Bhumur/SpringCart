package com.SpringCart.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringCart.Dto.CategoryDto;
import com.SpringCart.Entity.Category;
import com.SpringCart.Repositry.CategoryRepositry;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	CategoryRepositry categoryRepo;
	
	@Override
	public CategoryDto getCategoryById(int id) {
		Optional<Category> category = categoryRepo.findById(id);
		CategoryDto result = new CategoryDto();
		if(category.isPresent()) {
			Category resultCategory = category.get();
			result.setCategoryId(resultCategory.getCategoryId());
			result.setCategoryName(resultCategory.getName());
			result.setCategoryDiscription(resultCategory.getCategoryDiscription());
			result.setCategoryImg(resultCategory.getCategoryImg());
			result.setProducts(resultCategory.getProducts());
			return result;
		}
		return null;
	}

	@Override
	public CategoryDto getCategoryByName(String name) {
		Category resultCategory = categoryRepo.getByName(name);
		CategoryDto result = new CategoryDto();
		if(resultCategory!=null) {
			result.setCategoryId(resultCategory.getCategoryId());
			result.setCategoryName(resultCategory.getName());
			result.setCategoryDiscription(resultCategory.getCategoryDiscription());
			result.setCategoryImg(resultCategory.getCategoryImg());
			result.setProducts(resultCategory.getProducts());
			return result;
		}
		return null;
	}

	@Override
	public boolean addCategory(String name, String discription, String image) {
		try {
			Category category = new Category();
			category.setCategoryDiscription(discription);
			category.setCategoryImg(image);
			category.setName(name);
			categoryRepo.save(category);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public List<CategoryDto> allCategory() {
		List<Category> list = categoryRepo.findAll();
		List<CategoryDto> resultList = new ArrayList<CategoryDto>();
		for(Category c : list) {
			CategoryDto cdto = new CategoryDto();
			cdto.setCategoryId(c.getCategoryId());
			cdto.setCategoryName(c.getName());
			cdto.setCategoryDiscription(c.getCategoryDiscription());
			cdto.setCategoryImg(c.getCategoryImg());
			resultList.add(cdto);
		}
		return resultList;
	}

}
