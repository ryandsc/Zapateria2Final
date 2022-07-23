package com.cal.zapateria2.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cal.zapateria2.business.entities.Cuenta;
import com.cal.zapateria2.business.repositories.CuentaRepository;

@Service
public class CuentaServiceImpl implements CuentaService{
	
	@Autowired
	private CuentaRepository cuentaRepository;
	
	@Override
	public List<Cuenta> ValidarCuenta(){
		return cuentaRepository.findAll();
		
	}

	@Override
	public Cuenta buscarPorUserPass(String user, String pass) {
		// TODO Auto-generated method stub
		return (cuentaRepository.findAll().stream().filter(cuenta -> user.equals(cuenta.getUser()))).findAny().orElse(null);
	}

}
