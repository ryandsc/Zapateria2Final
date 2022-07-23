package com.cal.zapateria2.business.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="producto")
@Getter
@Setter
@ToString
public class Producto {
	
	//Atributos
	@Id
	@Column(name="id")
	private Integer id;
	
	@Column(name="nombre")
	private String nombre;
	
	@Column(name="descripcion")
	private String descripcion;
	
	@Column(name="categoria")
	private String categoria;
	
	@Column(name = "precio")
	private Double precio;
	
	@Column(name = "modelo")
	private String modelo;
	
	@Column(name = "marca")
	private String marca;
	
	@Column(name = "insumo")
	private String insumo;
	
	@Column(name = "url")
	private String url;

}
