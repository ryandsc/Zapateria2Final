package com.cal.zapateria2.web;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages = "com.cal.zapateria2.web.controllers")
@EnableWebMvc
public class Zapateria2WebConfig {
	
	@Bean
	public ViewResolver internalViewResolver() {
		InternalResourceViewResolver internalResourceViewResolver=new InternalResourceViewResolver();
		internalResourceViewResolver.setPrefix("/WEB-INF/views/");
		internalResourceViewResolver.setSuffix(".jsp");
		return internalResourceViewResolver;
		
	}

}
