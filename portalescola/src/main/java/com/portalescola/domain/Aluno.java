package com.portalescola.domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
 
@Entity   
public class Aluno implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4574127909442509034L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idAluno;

	@Column(nullable = false, length = 80)
	private String nomeAluno;
	
	
	@OneToMany(mappedBy="aluno",fetch=FetchType.LAZY)
    private List<Nota> notas;
	
	public Aluno() {
	}

	public Aluno(int idAluno, String nomeAluno) {
		this.idAluno = idAluno;
		this.nomeAluno = nomeAluno;
	}

	public int getIdAluno() {
		return idAluno;
	}

	public void setIdAluno(int idAluno) {
		this.idAluno = idAluno;
	}

	public String getNomeAluno() {
		return nomeAluno;
	}

	public void setNomeAluno(String nomeAluno) {
		this.nomeAluno = nomeAluno;
	}

	public List<Nota> getNotas() {
		return notas;
	}

	public void setNotas(List<Nota> notas) {
		this.notas = notas;
	}

}
