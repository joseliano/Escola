package  com.portalescola.repositories;
 
import org.springframework.data.repository.CrudRepository;

import com.portalescola.domain.Aluno; 
 

public interface AlunoRepository extends CrudRepository<Aluno, Integer> {
}	 