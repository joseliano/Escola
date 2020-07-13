import { Injectable, Inject } from '@angular/core';
import { HttpClient, HttpHeaders, HttpClientModule  } from '@angular/common/http';
import { NotaAluno } from '../nota-aluno';
 
import { AppConstants } from '../App.Constants';
import { Aluno } from '../aluno';


@Injectable({
  providedIn: 'root'
})
export class NotaAlunoService { 
 

  constructor(private http: HttpClient) {  
  }   

  getListNotaAluno() {
    return this.http.get<NotaAluno[]>( AppConstants.baseURL + 'listAluno' );   
  }

  getListAno() {
    return this.http.get<String[]>( AppConstants.baseURL + 'listAno' );   
  }
  getListAlunoPorAno(ano:string) {
    return this.http.get<Aluno[]>(AppConstants.baseURL + 'listAlunoPorAno/' + ano );   
  }
  getListAlunoNota(id:string) {
    return this.http.get<Aluno[]>(AppConstants.baseURL + 'listNotaAluno/' + id );   
  }
}

