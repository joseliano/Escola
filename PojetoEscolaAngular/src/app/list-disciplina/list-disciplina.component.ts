import { Component, OnInit } from '@angular/core';
import { DisciplinaService } from '../services/disciplina.service';
import { Disciplina } from '../disciplina';
import {Router} from "@angular/router";
import {FormBuilder, FormGroup, Validators} from "@angular/forms";

@Component({
  selector: 'app-list-disciplina',
  templateUrl: './list-disciplina.component.html',
  styleUrls: ['./list-disciplina.component.less']
})
export class ListDisciplinaComponent implements OnInit {

  disciplina: Disciplina[];
 
  constructor(private formBuilder: FormBuilder,private router: Router, private disciplinaService:DisciplinaService) { }

  disciplinas:any;
  ngOnInit() {
    this.disciplinaService.getListDisciplina().subscribe(res=> this.disciplinas =res); 
  }

}
