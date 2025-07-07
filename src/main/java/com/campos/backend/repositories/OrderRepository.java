package com.campos.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.campos.backend.entities.Order;

public interface OrderRepository extends JpaRepository<Order, Long> {
	
	// Repository esta herdando o JpaRepository
	
}
