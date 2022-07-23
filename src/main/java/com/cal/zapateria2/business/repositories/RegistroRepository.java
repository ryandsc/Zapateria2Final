package com.cal.zapateria2.business.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cal.zapateria2.business.entities.Cuenta;

@Repository
public interface RegistroRepository extends JpaRepository<Cuenta, Integer>{

}
