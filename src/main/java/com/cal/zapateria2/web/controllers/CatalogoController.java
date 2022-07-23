package com.cal.zapateria2.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CatalogoController {
	
	@RequestMapping(method = RequestMethod.GET, value = "/catalogo.htm")
	public ModelAndView manejadorVistaCatalogo() {
		return new ModelAndView("Catalogo");
	}

}
