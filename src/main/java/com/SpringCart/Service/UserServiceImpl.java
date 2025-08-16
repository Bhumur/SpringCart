package com.SpringCart.Service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringCart.Entity.User;
import com.SpringCart.Repositry.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserRepository userRepo;

	@Override
	public boolean checkEmailExists(String email) {
		User user = userRepo.findByEmail(email);
		if(user!=null) 
			return true;
		else
			return false;
	}

	@Override
	public boolean checkUsernameExists(String username) {
		User user = userRepo.findByUsername(username);
		if(user!=null) 
			return true;
		else
			return false;
	}

	@Override
	public User getUserById(int id) {
		 Optional<User> user = userRepo.findById(id);
		 if(user.isPresent())
			 return user.get();
		 else
			 return null;
	}

	@Override
	public User getUserByEmail(String email) {
		User user = userRepo.findByEmail(email);
		return user;
	}

	@Override
	public User getUserByUsername(String username) {
		User user = userRepo.findByUsername(username);
		return user;
	}

	@Override
	public boolean registerUser(String name, String email, String username, String password, String phone,
			String address) {
		try {
			User user = new User();
			user.setName(name);
			user.setUsername(username);
			user.setEmail(email);
			user.setPassword(password);
			user.setAddress(address);
			user.setPhone(phone);
		}catch(Exception ex){
			return false;
		}
		return true;
	}

}
