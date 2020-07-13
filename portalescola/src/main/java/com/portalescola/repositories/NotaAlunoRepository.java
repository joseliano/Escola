package  com.portalescola.repositories; 
import org.springframework.data.repository.CrudRepository;

import com.portalescola.domain.Nota;
  
public interface NotaAlunoRepository extends CrudRepository<Nota, Integer> { 
}	 