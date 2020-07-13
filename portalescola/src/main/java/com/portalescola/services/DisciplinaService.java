package  com.portalescola.services;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
import com.portalescola.domain.Disciplina;
import com.portalescola.repositories.DisciplinaRepository;
import com.portalescola.services.interfaces.IRepository;
 

@Service
public class DisciplinaService implements IRepository<Disciplina> { 

	private DisciplinaRepository disciplinaRepository;

	@Autowired
	public DisciplinaService(DisciplinaRepository disciplinaRepository) {
		this.disciplinaRepository = disciplinaRepository;
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Disciplina> listAll() {
		List<Disciplina> disciplinas = new ArrayList<>();
		disciplinaRepository.findAll().forEach(disciplinas::add); ;
		return disciplinas; 
	}

	@Override
	public Disciplina getById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Disciplina saveOrUpdate(Disciplina obj) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<String[]> listAllSt() {
		// TODO Auto-generated method stub
		return null;
	}
}
