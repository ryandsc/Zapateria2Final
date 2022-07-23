package com.cal.zapateria2.services;

import java.util.List;

import com.cal.zapateria2.business.entities.Producto;


public interface IdProductoService {
	
	public List<Producto> ListarIDActivo();
	
	
	public Producto buscarPorId(Integer id); 

}
