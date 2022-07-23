package com.cal.zapateria2.services;

import com.cal.zapateria2.business.entities.Cuenta;

public interface RegistroService {
	
	public Cuenta registrarCuenta(String user, String dni, String email, String pass);

}
