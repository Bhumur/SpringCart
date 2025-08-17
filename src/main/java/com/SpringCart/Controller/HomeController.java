package com.SpringCart.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.SpringCart.Service.CategoryServiceImpl;

@Controller
public class HomeController {
	
	@Autowired
	CategoryServiceImpl categoryService;
	
	@GetMapping("/")
	public String homePage(Model model) {
		model.addAttribute("categories",categoryService.allCategory());
	    return "home";
	}
}
