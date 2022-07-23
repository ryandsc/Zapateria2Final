package com.cal.zapateria2.business.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "cuenta")
@Getter
@Setter
@ToString
public class Registro {
	
	@Id
	@Column(name="id_cuenta")
	private Integer id_cuenta;
	
	@Column(name="user")
	private String user;
	
	@Column(name="dni")
	private String dni;
	
	@Column(name="email")
	private String email;
	
	@Column(name="pass")
	private String pass;

}
