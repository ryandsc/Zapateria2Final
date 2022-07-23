package com.cal.zapateria2.business.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "cesta")
@Getter
@Setter
@ToString
public class Cesta {
	
	@Id
	@Column(name = "id_cesta")
	private Integer id_cesta;
	
	@Column(name = "url")
	private String url;
	
	@Column(name = "nombre")
	private String nombre;
	
	@Column(name = "precio")
	private Double precio; 

}
