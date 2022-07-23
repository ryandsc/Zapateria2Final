package com.cal.zapateria2.business.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cal.zapateria2.business.entities.Producto;

@Repository
public interface ProductRepository extends JpaRepository<Producto, Integer>{
	
	//List<Producto> listarxDescripcion(String descripcion);

}
