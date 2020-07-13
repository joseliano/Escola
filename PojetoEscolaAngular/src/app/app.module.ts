import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AppComponent } from './app.component'; 
import { HttpClientModule } from '@angular/common/http';
import { FormsModule, ReactiveFormsModule }   from '@angular/forms';
import { ListDisciplinaComponent } from './list-disciplina/list-disciplina.component';
import { ListAlunoComponent } from './list-aluno/list-aluno.component';
import { ListNotaAlunoComponent } from './list-nota-aluno/list-nota-aluno.component';


const appRoutes: Routes = [
  { path: 'ListDisciplina', component: ListDisciplinaComponent },
  { path: 'ListAluno', component: ListAlunoComponent }, 
  { path: 'ListAlunoNota', component: ListNotaAlunoComponent },  
  
  { path: '',
    redirectTo: '',
    pathMatch: 'full'
  }
];
@NgModule({
  declarations: [
    AppComponent, 
    ListDisciplinaComponent, ListAlunoComponent, ListNotaAlunoComponent
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    RouterModule.forRoot(
      appRoutes,
      { enableTracing: true }  
    )
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
