package com.portalescola.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.portalescola.domain.Aluno;
import com.portalescola.domain.Disciplina;
import com.portalescola.domain.Nota;
import com.portalescola.repositories.NotaAlunoRepository;
import com.portalescola.services.interfaces.IRepository;

@Service
public class NotaService implements IRepository<Nota> {

	private NotaAlunoRepository notaAlunoRepository;

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public NotaService(NotaAlunoRepository notaAlunoRepository) {
		this.notaAlunoRepository = notaAlunoRepository;
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Nota> listAll() {
		List<Nota> nota = new ArrayList<>(); 
		notaAlunoRepository.findAll().forEach(nota::add); 
		return nota; 
	}

	@Override
	public Nota getById(int id) {
		Nota notaAluno;
		notaAluno = notaAlunoRepository.findById(id).get();
		return notaAluno;
	}

	public List<Nota> getNotasAluno(int id) {

		String query = "SELECT * FROM Nota  nl " 
				+ " INNER JOIN Aluno a on a.id_aluno = nl.id_aluno   "
				+ " INNER JOIN Disciplina d on d.id_disciplina = nl.id_disciplina " 
				+ " where a.id_aluno=? "
				+ " order by nl.ano asc , a.nome_aluno , nl.id_disciplina ";

		return jdbcTemplate.query(query, new Object[] { id }, (rs, rowNum) -> {
			return new Nota(rs.getInt("idnota"), rs.getString("ano"), rs.getString("P1"), rs.getString("P2"),rs.getString("P3"), 
					         new Disciplina(rs.getInt("id_disciplina"), rs.getString("nome_disciplina")),
					         new Aluno(rs.getInt("id_aluno"), rs.getString("nome_Aluno"))
					);
		});

	}
 
	public List<Aluno> getAnoAluno(String ano) { 
		String query = "SELECT distinct a.id_aluno, a.nome_Aluno FROM Nota  nl " 
				+ " INNER JOIN Aluno a on a.id_aluno = nl.id_aluno   " 
				+ " where nl.ano=? " ;

		return jdbcTemplate.query(query, new Object[] { ano }, (rs, rowNum) -> {
			return new Aluno(rs.getInt("id_aluno"), rs.getString("nome_Aluno"));
		});
	}
	@Override
	public Nota saveOrUpdate(Nota obj) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<String[]> listAllSt() {
		// TODO Auto-generated method stub

		String query = "SELECT distinct ano FROM Nota order by ano asc   ";

		return jdbcTemplate.query(query, (rs, rowNum) -> {
			return new String[] { rs.getString("ano") };

		});

	}

}
