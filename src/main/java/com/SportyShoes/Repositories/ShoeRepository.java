package com.SportyShoes.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.SportyShoes.Entity.Shoe;

@Repository
public interface ShoeRepository extends JpaRepository<Shoe, Integer>{

}
