package com.SportyShoes.Repositories;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.SportyShoes.Entity.Order;
@Repository
public interface OrderRepository extends JpaRepository<Order, Integer> {
	
	@Query(value = "SELECT * FROM Orders WHERE category=:category and DOP=:dop ", nativeQuery = true)
    List<Order>  orderFilter(@Param("category") String caregory,@Param("dop") Date dop);

}
