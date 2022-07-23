package com.cal.zapateria2.business.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cal.zapateria2.business.entities.Producto;

@Repository
public interface IdProductRepository extends JpaRepository<Producto, Integer>{
	
	//Producto filterById(Integer id);
	

}
