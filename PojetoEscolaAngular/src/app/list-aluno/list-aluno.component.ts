import { Component, OnInit } from '@angular/core';
import {Router} from "@angular/router";
import {FormBuilder, FormGroup, Validators} from "@angular/forms";
import { AlunoService } from '../services/aluno.service';
import { Aluno } from '../aluno';


@Component({
  selector: 'app-list-aluno',
  templateUrl: './list-aluno.component.html',
  styleUrls: ['./list-aluno.component.css']
})
export class ListAlunoComponent implements OnInit {
  aluno: Aluno[];
 
  constructor(private formBuilder: FormBuilder,private router: Router, private alunoService:AlunoService) { }

  alunos:any;
  ngOnInit() {
    this.alunoService.getListAluno().subscribe(res=> this.alunos =res); 
  }

}
