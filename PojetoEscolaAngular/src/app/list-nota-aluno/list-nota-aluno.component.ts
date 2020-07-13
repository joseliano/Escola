import { Component, OnInit } from '@angular/core';
import {Router} from "@angular/router";
import {FormBuilder, FormGroup, Validators} from "@angular/forms";
import { NotaAluno } from '../nota-aluno';
import { NotaAlunoService } from '../services/nota-aluno.service';   
import { AlunoService } from '../services/aluno.service';

@Component({
  selector: 'app-list-nota-aluno',
  templateUrl: './list-nota-aluno.component.html',
  styleUrls: ['./list-nota-aluno.component.css']
})
export class ListNotaAlunoComponent implements OnInit {

  notaAluno: NotaAluno[]; 
   
  constructor(private formBuilder: FormBuilder,
    private router: Router, 
    private notaAlunoService:NotaAlunoService  ,
    private alunoService: AlunoService
    ) { }
   
  notaAlunos:any[];
  cbmAluno:any[];
  cbmAno:any[];
  ngOnInit() {
    this.notaAlunoService.getListNotaAluno().subscribe(res=> this.notaAlunos =res); 
    this.notaAlunoService.getListAno().subscribe(res=>this.cbmAno =res);
    this.alunoService.getListAluno().subscribe(res=>this.cbmAluno =res);
  }

  onOptionsSelectedAno(value:string) {
    this.notaAlunoService.getListAlunoPorAno(value).subscribe(res=> this.cbmAluno=res);  
  }
  onOptionsSelectedAluno(value:string) {
    this.notaAlunoService.getListAlunoNota(value).subscribe(res=> this.notaAlunos=res);  
  }
  
}
