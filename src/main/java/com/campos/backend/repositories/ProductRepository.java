package com.campos.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.campos.backend.entities.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {
	
	// Repository esta herdando o JpaRepository
	
}
