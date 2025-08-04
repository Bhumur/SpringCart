package com.example.StringCart.Service;

import java.util.Optional;

import com.example.StringCart.Entity.User;

public interface UserService {

	public Optional<User> getUserById(int id);
	
	
}
