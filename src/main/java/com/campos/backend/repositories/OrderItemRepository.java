package com.campos.backend.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.campos.backend.entities.OrderItem;
import com.campos.backend.entities.pk.OrderItemPK;

public interface OrderItemRepository extends JpaRepository<OrderItem, OrderItemPK> {
	
	// Repository esta herdando o JpaRepository
	
}
