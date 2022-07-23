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

import com.cal.zapateria2.services.CuentaService;

@Controller
public class PanelController {
	
	protected final Log logger=LogFactory.getLog(getClass());
	
	@Autowired
	private CuentaService cuentaService;
	
	@RequestMapping(method = RequestMethod.GET, value = "/panel.htm")
	public ModelAndView manejadorVistaPanel(@RequestParam String user, String pass) {
		
		Map<String, Object> userAccountModel=new HashMap<String, Object>();
		
		userAccountModel.put("cuenta", this.cuentaService.buscarPorUserPass(user, pass));
		logger.info("Resolviendo User de Cuenta");
		logger.info(userAccountModel);
		
		System.out.print(user);
		
		return new ModelAndView("Panel","model",userAccountModel);
	}

}
