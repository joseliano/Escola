package  com.portalescola.controllers;
 
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.portalescola.domain.Aluno;
import com.portalescola.domain.Disciplina;
import com.portalescola.domain.Nota; 
import com.portalescola.services.AlunoService;
import com.portalescola.services.DisciplinaService;
import com.portalescola.services.NotaService;  

 
 
@RestController  
@RequestMapping("/api")
public class AlunoController {

	private AlunoService alunoService;
	private DisciplinaService disciplinaService;
	private NotaService notaAlunoService; 

	@Autowired
	public void setAlunoService(AlunoService alunoService) {
		this.alunoService = alunoService;
	}
	@Autowired
	public void setDisciplinaService(DisciplinaService disciplinaService) {
		this.disciplinaService = disciplinaService;
	}
	@Autowired
	public void setNotaAlunoService(NotaService notaAlunoService) {
		this.notaAlunoService = notaAlunoService;
	}
 
	@RequestMapping(value = "teste", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public String getTeste() {
		return "oi";
	}
	/* listas */
	/* metodo 02 */
	@CrossOrigin
	@RequestMapping(value = "/listAluno", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public List<Aluno> getListAluno() { 
		List<Aluno> aluno = new ArrayList<>();
		for(Aluno al : alunoService.listAll()){			  
			List<Nota> notas =  notaAlunoService.getNotasAluno(al.getIdAluno());			
			al.setNotas(notas);
			aluno.add(al);
		}
		
		return aluno;
	}
	
 
	/* metodo 01 */
	@CrossOrigin
	@RequestMapping(value = "/listNotaAlunoAll", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public List<Nota> getListNotaAluno() { 
		return notaAlunoService.listAll();
	}
	
	@CrossOrigin
	@RequestMapping(value = "/listDisciplina", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public List<Disciplina> getListDisciplina() { 
		return disciplinaService.listAll();
	}
	
	@CrossOrigin
	@RequestMapping(value = "/listAno", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public List<String[]> getListAno() { 
		return notaAlunoService.listAllSt();
	}
	
	/* get item*/
	@CrossOrigin
	@RequestMapping(value = "/nota/{id}",   method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public Nota getNota(@PathVariable("id") int id) { 
		return notaAlunoService.getById(id);
	}
	@CrossOrigin
	@RequestMapping(value = "/listNotaAluno/{id}",   method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public List<Aluno> getNotaAluno(@PathVariable("id") int id) { 
		
		List<Aluno> alunos = new ArrayList<>();
		Aluno aluno = alunoService.getById(id);		
		List<Nota> notas =  notaAlunoService.getNotasAluno(aluno.getIdAluno());
		aluno.setNotas(notas);
		
		alunos.add(aluno);
		return alunos;
		
	} 
	
	@CrossOrigin
	@RequestMapping(value = "/listAlunoPorAno/{ano}",   method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public List<Aluno> getAnoAluno(@PathVariable("ano") int ano) { 
		return notaAlunoService.getAnoAluno(String.valueOf(ano));
	} 
}
