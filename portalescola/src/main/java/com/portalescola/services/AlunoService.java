package com.portalescola.services;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portalescola.domain.Aluno; 
import com.portalescola.repositories.AlunoRepository;
import com.portalescola.services.interfaces.IRepository;

@Service
public class AlunoService implements IRepository<Aluno> {

	private AlunoRepository alunoRepository;

	@Autowired
	public AlunoService(AlunoRepository alunoRepository) {
		this.alunoRepository = alunoRepository;
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Aluno> listAll() {
		List<Aluno> aluno = new ArrayList<>(); 
		alunoRepository.findAll().forEach(aluno::add); 
		return aluno;
	}

	@Override
	public Aluno getById(int id) {
		
		return alunoRepository.findById(id).get(); 
	}

	@Override
	public Aluno saveOrUpdate(Aluno obj) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<String[]> listAllSt() {
		// TODO Auto-generated method stub
		return null;
	}
}
