package com.cal.zapateria2.services;

import java.util.List;

import com.cal.zapateria2.business.entities.Cuenta;

public interface CuentaService {
	
	public List<Cuenta> ValidarCuenta();
	
	public Cuenta buscarPorUserPass(String user, String pass);

}
