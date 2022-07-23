package com.cal.zapateria2.business.entities;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.swing.JOptionPane;

public class Conn {
	
	private Connection conex;
	
	private String cadenaConexion="jdbc:postgresql://localhost:5432/bd_zapateria";
	private final String usuario = "postgres";
	private final String contrasena = "upao";
	
	public Connection getConex() {
		return conex;
	}
	
	public void ConectarBD() {
		try {
			Class.forName("org.postgresql.Driver");
			conex = DriverManager.getConnection(cadenaConexion, usuario, contrasena);
			
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());
		}
	}
	
	public void CerrarBD() {
		try {
			conex.close();
		} catch(Exception e) {
			JOptionPane.showMessageDialog(null, "Error:" +e.getMessage());
		}
		
	}
	

}
