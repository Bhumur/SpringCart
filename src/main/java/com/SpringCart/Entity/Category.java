package com.SpringCart.Entity;

import java.util.Set;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name="category")
public class Category {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int categoryId;
	@Column(name="name")
	String name;
	@Column(name="categoryDiscription")
	String categoryDiscription;
	@Column(name="categoryImg")
	String categoryImg;
}
