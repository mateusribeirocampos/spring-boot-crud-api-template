package com.campos.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.campos.backend.entities.User;

public interface UserRepository extends JpaRepository<User, Long> {
	
	// Repository esta herdando o JpaRepository
	
}
