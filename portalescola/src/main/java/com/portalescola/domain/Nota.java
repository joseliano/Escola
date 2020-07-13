package com.portalescola.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OrderBy;
  
@Entity 
public class Nota implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8859333104441942619L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idnota; 
	 
	@ManyToOne
	@JoinColumn(name="id_aluno", insertable=false, updatable=false, nullable=false)
	private Aluno aluno;
	
	@Column(length = 4, nullable = false)
	@OrderBy("ano ASC")
	private String ano;
	 
	@ManyToOne
	@JoinColumn(name = "id_disciplina" , insertable=false, updatable=false, nullable=false)  
    private Disciplina  disciplina  ;
	 
	@Column(nullable = true, length = 4)
	private String  P1;
	
	@Column(nullable = true, length = 4)
	private String  P2;
	
	@Column(nullable = true, length = 4)
	private String  P3;
	
	public Nota() {
	}

	public Nota(int idnota, String ano,  String P1, String P2, String P3, Disciplina  disciplina, Aluno aluno) {
		this.idnota = idnota;
		this.ano = ano; 
		this.P1 = P1;
		this.P2 = P2;
		this.P3 = P3;
		this.disciplina = disciplina;
		this.aluno = aluno;
	}
	
	public String getAno() {
		return ano;
	}

	public void setAno(String ano) {
		this.ano = ano;
	} 

	public Disciplina getDisciplina() {
		return disciplina;
	}

	public void setDisciplina(Disciplina disciplina) {
		this.disciplina = disciplina;
	}
  
	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}

	public int getIdnota() {
		return idnota;
	}

	public void setIdnota(int idnota) {
		this.idnota = idnota;
	}

	public String getP1() {
		return P1!="" ? P1 : "Ñ";
	}

	public void setP1(String p1) {
		P1 = p1;
	}

	public String getP2() {
		return  P2!="" ? P2 : "Ñ";
	}

	public void setP2(String p2) {
		P2 = p2;
	}

	public String getP3() {
		return P3!="" ? P3 : "Ñ";
	}

	public void setP3(String p3) {
		P3 = p3;
	}
 
 
	 

}
