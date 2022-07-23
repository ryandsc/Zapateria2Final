package com.cal.zapateria2.web.controllers;

import java.sql.PreparedStatement;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cal.zapateria2.business.entities.Conn;
import com.cal.zapateria2.services.CestaService;

@Controller
public class CestaController {
	protected final Log logger=LogFactory.getLog(getClass());
	Conn con = new Conn();
	
	private PreparedStatement ps;
	
	@Autowired
	private CestaService cestaService;
	
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
	
	@RequestMapping(method = RequestMethod.GET, value = "/cesta.htm")
	public ModelAndView manejadorCesta(@RequestParam String url, String nombre, Double precio) {
		CestaController metodos=new CestaController();
		System.out.println(url);
		System.out.println(nombre);
		System.out.println(precio);
		metodos.ejecutarSQL("INSERT INTO public.cesta(url, \"nombre\", precio) VALUES ('"+ url +"'::character varying, '"+ nombre +"'::character varying, "+ "'"+ precio +"'::numeric);");
		
		Map<String, Object> cestaModel=new HashMap<String, Object>();
		cestaModel.put("cesta", this.cestaService.ListarCestaActiva());
		logger.info("Resolviendo la cesta de productos.");
		logger.info(cestaModel);
		
		return new ModelAndView("Cesta","model",cestaModel);
		
		
	}

}
