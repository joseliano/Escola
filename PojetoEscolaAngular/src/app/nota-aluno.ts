import { Aluno } from "./aluno";
import { Disciplina } from "./disciplina";

export class NotaAluno {
    idNota: number;
    ano:string;
    nota:string;
    bimestre:string;

    aluno:Aluno;
    
    disciplina:Disciplina; 
}
 