package com.SpringCart.Repositry;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.SpringCart.Entity.Category;

@Repository
public interface CategoryRepositry extends JpaRepository<Category, Integer> {
	Category getByName(String name);
}
