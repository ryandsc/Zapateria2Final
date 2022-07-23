package com.cal.zapateria2.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InicioController {
	
	@RequestMapping(method = RequestMethod.GET, value = "/inicio.htm")
	public ModelAndView manejadorVistaInicial() {
		return new ModelAndView("Inicio");
	}

}
