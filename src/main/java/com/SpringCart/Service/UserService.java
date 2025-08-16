package com.SpringCart.Service;

import com.SpringCart.Entity.User;

public interface UserService {
	boolean checkEmailExists(String email);
	boolean checkUsernameExists(String username);
	User getUserById(int id);
	User getUserByEmail(String email);
	User getUserByUsername(String username);
	boolean registerUser(String name, String email, String username, String password, String phone, String address);
}
