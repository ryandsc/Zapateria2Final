package com.cal.zapateria2.web.controllers;

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

import com.cal.zapateria2.services.CestaService;

@Controller
public class CestaEspecialController {
	protected final Log logger=LogFactory.getLog(getClass());
	
	@Autowired
	private CestaService cestaService;
	
	@RequestMapping(method = RequestMethod.GET, value = "/cestaesp.htm")
	public ModelAndView manejadorCestaEspecial() {
		Map<String, Object> cestaModel=new HashMap<String, Object>();
		cestaModel.put("cesta", this.cestaService.ListarCestaActiva());
		logger.info("Resolviendo la cesta de productos.");
		logger.info(cestaModel);
		
		return new ModelAndView("Cesta","model",cestaModel);
		
	}

}
