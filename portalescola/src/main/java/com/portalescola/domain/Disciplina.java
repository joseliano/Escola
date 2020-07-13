package com.portalescola.domain;
 
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id; 

@Entity   
public class Disciplina implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -8418085310041562414L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idDisciplina; 
	 
	@Column(nullable = false,length = 80)
	private String nomeDisciplina;

	public Disciplina() {
	}

	public Disciplina(int idDisciplina,  String nomeDisciplina) {
		this.idDisciplina = idDisciplina;
		this.nomeDisciplina = nomeDisciplina;
	}
	
	public int getIdDisciplina() {
		return idDisciplina;
	}

	public void setIdDisciplina(int idDisciplina) {
		this.idDisciplina = idDisciplina;
	}

	public String getNomeDisciplina() {
		return nomeDisciplina;
	}

	public void setNome(String nomeDisciplina) {
		this.nomeDisciplina = nomeDisciplina;
	}
 
}
