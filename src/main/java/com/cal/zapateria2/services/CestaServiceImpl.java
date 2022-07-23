package com.cal.zapateria2.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cal.zapateria2.business.entities.Cesta;
import com.cal.zapateria2.business.repositories.CestaRepository;

@Service
public class CestaServiceImpl implements CestaService{
	
	@Autowired
	private CestaRepository cestaRepository;
	
	@Override
	public List<Cesta> ListarCestaActiva(){
		return cestaRepository.findAll();
	}

}
