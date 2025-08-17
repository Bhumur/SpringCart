package com.SpringCart.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.SpringCart.Service.ProductServiceImpl;

@Controller
public class ProductController {
	
	@Autowired
	ProductServiceImpl productService;
	
	@GetMapping("/product/{id}")
	public String productList(Model model, @PathVariable int id) {
		System.out.println("hel"+id);
		model.addAttribute("products", productService.getProductList(id));
		return "product";
	}
}
