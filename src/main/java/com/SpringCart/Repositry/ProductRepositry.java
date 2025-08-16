package com.SpringCart.Repositry;

import org.springframework.data.jpa.repository.JpaRepository;

import com.SpringCart.Entity.Product;

public interface ProductRepositry extends JpaRepository<Product, Integer> {

}
