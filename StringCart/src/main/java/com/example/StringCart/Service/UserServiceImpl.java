package com.example.StringCart.Service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.StringCart.Entity.User;
import com.example.StringCart.Repository.UserRepository;

public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepo;
	
	@Override
	public Optional<User> getUserById(int id) {
		return userRepo.findById(id);
	}

}
