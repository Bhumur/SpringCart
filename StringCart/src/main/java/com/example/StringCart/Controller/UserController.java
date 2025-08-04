package com.example.StringCart.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.StringCart.Entity.User;

@Controller
public class UserController {
	
	@RequestMapping("/register")
	public void register(Model data) {
		User objUser = new User();
		data.addAttribute("registerUser", objUser);
	}
	
	
	@RequestMapping("/login")
	public void login(Model data) {
		User objUser = new User();
		data.addAttribute("objUser", objUser);
	}
	
	@RequestMapping("/auth")
	public ModelAndView authentication(@ModelAttribute("objUser")User obj) {
		if(obj.getUsername().equals("admin")) {
			return new ModelAndView("admin");
		}else {
			return new ModelAndView("dashboard");
		}
	}
}
