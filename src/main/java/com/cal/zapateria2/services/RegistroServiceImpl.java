package com.cal.zapateria2.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;

import com.cal.zapateria2.business.entities.Cuenta;
import com.cal.zapateria2.business.repositories.RegistroRepository;

public class RegistroServiceImpl implements RegistroService{
	
	@Autowired
	private RegistroRepository registroRepository;
	
	@Override
	public Cuenta registrarCuenta(String user, String dni, String email, String pass) {
		
		
		//String sql="INSERT INTO public.cuenta(\"user\", dni, email, pass) VALUES ('"+ user +"'::character varying, '"+ dni +"'::character varying, "
		//		+ "'"+ email +"'::character varying, '"+ pass +"'::character varying);";
		
		
		//@Query(value = "")
		return (registroRepository.findAll().stream().filter(cuenta -> user.equals(cuenta.getUser()))).findAny().orElse(null);
	}
	

}
