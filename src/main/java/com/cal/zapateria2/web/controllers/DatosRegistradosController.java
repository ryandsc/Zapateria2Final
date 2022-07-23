	package com.cal.zapateria2.web.controllers;

import java.sql.PreparedStatement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cal.zapateria2.business.entities.Conn;

@Controller
public class DatosRegistradosController {
	
	Conn con = new Conn();
	

	
		private PreparedStatement ps;

	    public void ejecutarSQL(String sql) {
	        con.ConectarBD();
	        
	        try {
	            ps = con.getConex().prepareStatement(sql);
	            ps.execute();
	            ps.close();
	            con.CerrarBD();
	            System.out.println("insertado");
	        } catch (Exception e) {
	            System.out.println("error: " + e.getMessage());
	        }
	    }
	    
	@RequestMapping(method = RequestMethod.GET, value = "/datos.htm")
	public ModelAndView manejadorDatosRegistrados(@RequestParam String user, String dni, String email, String pass) {
		DatosRegistradosController metodos = new DatosRegistradosController();
        metodos.ejecutarSQL("INSERT INTO public.cuenta(\"user\", dni, email, pass) VALUES ('"+ user +"'::character varying, '"+ dni +"'::character varying, "+ "'"+ email +"'::character varying, '"+ pass +"'::character varying);");
    
		return new ModelAndView("Inicio");
	}
	

}
