import { Injectable, Inject } from '@angular/core'; 
import { HttpClient, HttpHeaders, HttpClientModule  } from '@angular/common/http';
import { AppConstants } from '../App.Constants';

@Injectable({
  providedIn: 'root'
})
export class DisciplinaService { 

  constructor(private http: HttpClient ) {   
  }      
  
  getListDisciplina() {  
    return this.http.get(AppConstants.baseURL + 'listDisciplina' );   
  }
}
