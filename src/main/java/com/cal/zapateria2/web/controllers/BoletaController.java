package com.cal.zapateria2.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoletaController {
	
	@RequestMapping(method = RequestMethod.GET, value = "/boleta.htm")
	public ModelAndView vistaBoleta() {
		return new ModelAndView("Boleta");
	}

}
