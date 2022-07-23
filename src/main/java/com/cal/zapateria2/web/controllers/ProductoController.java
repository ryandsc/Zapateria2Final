package com.cal.zapateria2.web.controllers;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cal.zapateria2.services.ProductoService;

@Controller
public class ProductoController {
	//S6 2:48
	protected final Log logger=LogFactory.getLog(getClass());
	
	@Autowired
	private ProductoService productoService;
	
	@RequestMapping(method = RequestMethod.GET,value = "/producto.htm")
	public ModelAndView manejadorVistaProducto() {
		
		//enviar los datos de los productos hacia la vista
		Map<String, Object> productoModel=new HashMap<String, Object>();
		
		productoModel.put("productos", this.productoService.ListarProductosActivos());
		logger.info("Resolviendo la lista de productos.");
		logger.info(productoModel);
		
		//devolver a la vista
		return new ModelAndView("lstproductos","model",productoModel);
		//return new ModelAndView("lstproductos");
	}
	
	

}
