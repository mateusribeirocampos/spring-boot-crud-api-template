package com.campos.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.campos.backend.entities.Category;

public interface CategoryRepository extends JpaRepository<Category, Long> {
	
	// Repository esta herdando o JpaRepository
	
}
