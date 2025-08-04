package com.example.StringCart.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.StringCart.Entity.User;

public interface UserRepository extends JpaRepository<User, Integer> {

}
