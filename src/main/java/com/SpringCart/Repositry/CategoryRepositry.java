package com.SpringCart.Repositry;

import org.springframework.data.jpa.repository.JpaRepository;

import com.SpringCart.Entity.Category;

public interface CategoryRepositry extends JpaRepository<Category, Integer> {

}
