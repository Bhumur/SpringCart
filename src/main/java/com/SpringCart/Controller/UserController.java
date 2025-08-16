package com.SpringCart.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.SpringCart.Dto.LoginUser;
import com.SpringCart.Entity.User;
import com.SpringCart.Repositry.UserRepository;
import com.SpringCart.Service.UserServiceImpl;

@Controller
//@RequestMapping("/user")
public class UserController {

		@Autowired
		UserServiceImpl userService;
		
		@Autowired
		UserRepository userRepository;
	
		@GetMapping("/login")
		public String login() {
		    return "login";
		}
		
		@PostMapping("/login")
		public String loginRequest(@ModelAttribute LoginUser loginUser, Model model) {
		
			User u = userService.getUserByEmail(loginUser.getUsernameOrEmail());
			if(u==null) {
				u = userService.getUserByUsername(loginUser.getUsernameOrEmail());
			}
			if(u==null) {
		        model.addAttribute("error", "User Not Exist");
		        return "login";
			}
			if(loginUser.getPassword().equals(u.getPassword())) {
				return "category";
			}
			else {
				 model.addAttribute("error", "Incorrect Password");
				return "login";
			}
				
		}
		
		@GetMapping("/register")
		public String register() {
		    return "register";
		}
		
		@PostMapping("/register")
		public String registerUser(@ModelAttribute User user, Model model) {
		    try {
		    	
		    	if(userService.checkEmailExists(user.getEmail()) || userService.checkUsernameExists(user.getUsername())) {
		            model.addAttribute("error", "Email or Username already taken!");
		            return "register";
		        }
		        userRepository.save(user);
		        model.addAttribute("success", "Registration successful! Please login.");
		        return "login";

		    } catch (Exception e) {
		        model.addAttribute("error", "Something went wrong. Try again!");
		        return "register";
		    }
		}


}
