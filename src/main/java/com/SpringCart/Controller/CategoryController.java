package com.SpringCart.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.SpringCart.Service.CategoryServiceImpl;

@Controller
public class CategoryController {
	
	@Autowired 
	CategoryServiceImpl categoryService;
	
	@GetMapping("/categoryList")
	public String categoryList() {
		return "categoryList";
	}
	
	@GetMapping("/categories")
	public String catgeories(Model model) {
		model.addAttribute("categories",categoryService.allCategory());
		return "category";
	}
	
}
