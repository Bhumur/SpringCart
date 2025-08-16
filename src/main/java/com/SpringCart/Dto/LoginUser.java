package com.SpringCart.Dto;

import lombok.Data;

@Data
public class LoginUser {
	private String usernameOrEmail;
	private String password;
}
