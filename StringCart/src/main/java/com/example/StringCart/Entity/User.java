package com.example.StringCart.Entity;

import java.time.LocalDateTime;

import org.hibernate.annotations.CreationTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity
public class User {
	@Id
	@Column(name="userid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer userid;
	@Column(name="username")
	private String username;
	@Column(name="fname")
	private String firstname;
	@Column(name="lname")
	private String lastname;
	@Column(name="password")
	private String password;
	@Column(name="email")
	private String email;
	@CreationTimestamp
    private LocalDateTime createdAt;
}
