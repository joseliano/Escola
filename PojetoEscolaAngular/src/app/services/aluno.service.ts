import { Injectable, Inject } from '@angular/core'; 
import { HttpClient, HttpHeaders, HttpClientModule  } from '@angular/common/http';
import { AppConstants } from '../App.Constants';
import { Aluno } from '../aluno';

@Injectable({
  providedIn: 'root'
})
export class AlunoService { 

  constructor(private http: HttpClient ) {  
  }    
  getListAluno() {
    return this.http.get<Aluno[]>(AppConstants.baseURL + 'listAluno' );   
  } 
}
