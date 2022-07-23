package com.cal.zapateria2.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cal.zapateria2.business.entities.Producto;
import com.cal.zapateria2.business.repositories.ProductRepository;

@Service
public class ProductoServiceImpl implements ProductoService {
	
	@Autowired
	private ProductRepository productRepository;

	@Override
	public List<Producto> ListarProductosActivos() {
		// TODO Auto-generated method stub
		return productRepository.findAll();
	}

}
