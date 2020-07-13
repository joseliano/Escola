
	
insert into disciplina (id_disciplina,nome_disciplina)
select 01,' BIO1004' union all
select 02,' BIO1002' union all
select 03,' QUI1201' union all
select 04,' MAT1004' union all
select 05,' FIS1002' union all
select 06,' POR1200' union all
select 07,' FIS4300' union all
select 08,' FIS1004' union all
select 09,' MAT1003' union all
select 10,' FIS1003' union all
select 11,' MAT1001' union all
select 12,' POR1002' union all
select 13,' FIS1001' union all
select 14,' POR1003' union all
select 15,' QUI1200' union all
select 16,' MAT2002' union all
select 17,' QUI0001' union all
select 18,' BIO1003' union all
select 19,' QUI1002' union all
select 20,' FIS1200' union all
select 21,' MAT1002' union all
select 22,' POR1001'  ;



INSERT INTO public.aluno( id_aluno, nome_aluno)
select 01,'Andre Fonseca' union all
select 02,'Ze Roberto   ' union all
select 03,'Ronaldo Chaves ' union all
select 04,'Camila Brandao ' union all
select 05,'Gustavo Nilo ' union all
select 06,'Tiago Alcantra' union all
select 07,'Daniel Matias' union all
select 08,'Marcelo Mello' union all
select 09,'Bernado Brito' union all
select 10,'Sebastian Valentim ' union all
select 11,'Ana Teresa   ' union all
select 12,'Jose Costa   ' union all
select 13,'Jose Silva   '    ;


INSERT INTO public.nota( id_aluno, id_disciplina, ano,P1, P2, P3 )

select id_aluno, id_disciplina, ano, P1, P2, P3     from ( 
select 13 id_aluno ,2 id_disciplina,2008 ano ,60 P1 ,60 P2 ,60 P3  union all 
select 13 id_aluno ,2 id_disciplina,2009 ano ,40 P1 ,80 P2 ,90 P3  union all 
select 6 id_aluno ,2 id_disciplina,2008 ano ,50 P1 ,60 P2 ,70 P3  union all 
select 4 id_aluno ,18 id_disciplina,2008 ano ,40 P1 ,45 P2 ,80 P3  union all 
select 7 id_aluno ,18 id_disciplina,2008 ano ,40 P1 ,50 P2 ,60 P3  union all 
select 6 id_aluno ,18 id_disciplina,2009 ano ,20 P1 ,50 P2 ,70 P3  union all 
select 4 id_aluno ,1 id_disciplina,2009 ano ,40 P1 ,30 P2 ,null P3  union all 
select 7 id_aluno ,1 id_disciplina,2009 ano ,37 P1 ,70 P2 ,100 P3  union all 
select 3 id_aluno ,13 id_disciplina,2008 ano ,60 P1 ,70 P2 ,80 P3  union all 
select 11 id_aluno ,5 id_disciplina,2007 ano ,100 P1 ,100 P2 ,100 P3  union all 
select 13 id_aluno ,5 id_disciplina,2008 ano ,50 P1 ,60 P2 ,70 P3  union all 
select 13 id_aluno ,5 id_disciplina,2009 ano ,null P1 ,null P2 ,null P3  union all 
select 13 id_aluno ,5 id_disciplina,2007 ano ,60 P1 ,60 P2 ,60 P3  union all 
select 10 id_aluno ,5 id_disciplina,2008 ano ,60 P1 ,70 P2 ,80 P3  union all 
select 2 id_aluno ,5 id_disciplina,2008 ano ,null P1 ,null P2 ,null P3  union all 
select 2 id_aluno ,5 id_disciplina,2009 ano ,40 P1 ,60 P2 ,80 P3  union all 
select 10 id_aluno ,10 id_disciplina,2009 ano ,null P1 ,90 P2 ,50 P3  union all 
select 6 id_aluno ,10 id_disciplina,2008 ano ,0 P1 ,0 P2 ,0 P3  union all 
select 6 id_aluno ,10 id_disciplina,2008 ano ,50 P1 ,60 P2 ,70 P3  union all 
select 6 id_aluno ,10 id_disciplina,2009 ano ,70 P1 ,75 P2 ,80 P3  union all 
select 1 id_aluno ,8 id_disciplina,2009 ano ,90 P1 ,90 P2 ,90 P3  union all 
select 6 id_aluno ,8 id_disciplina,2009 ano ,40 P1 ,50 P2 ,80 P3  union all 
select 9 id_aluno ,6 id_disciplina,2008 ano ,60 P1 ,65 P2 ,70 P3  union all 
select 9 id_aluno ,6 id_disciplina,2009 ano ,20 P1 ,null P2 ,60 P3  union all 
select 4 id_aluno ,6 id_disciplina,2008 ano ,50 P1 ,60 P2 ,10 P3  union all 
select 4 id_aluno ,6 id_disciplina,2009 ano ,34 P1 ,37 P2 ,70 P3  union all 
select 11 id_aluno ,7 id_disciplina,2008 ano ,60 P1 ,62 P2 ,65 P3  union all 
select 11 id_aluno ,7 id_disciplina,2009 ano ,30 P1 ,99 P2 ,50 P3  union all 
select 11 id_aluno ,11 id_disciplina,2007 ano ,50 P1 ,60 P2 ,70 P3  union all 
select 13 id_aluno ,11 id_disciplina,2007 ano ,80 P1 ,80 P2 ,80 P3  union all 
select 8 id_aluno ,11 id_disciplina,2009 ano ,60 P1 ,80 P2 ,100 P3  union all 
select 11 id_aluno ,21 id_disciplina,2008 ano ,40 P1 ,30 P2 ,55 P3  union all 
select 1 id_aluno ,21 id_disciplina,2009 ano ,80 P1 ,80 P2 ,90 P3  union all 
select 12 id_aluno ,21 id_disciplina,2008 ano ,70 P1 ,80 P2 ,90 P3  union all 
select 11 id_aluno ,9 id_disciplina,2009 ano ,65 P1 ,null P2 ,40 P3  union all 
select 7 id_aluno ,9 id_disciplina,2008 ano ,20 P1 ,20 P2 ,50 P3  union all 
select 7 id_aluno ,9 id_disciplina,2009 ano ,20 P1 ,null P2 ,null P3  union all 
select 1 id_aluno ,4 id_disciplina,2008 ano ,40 P1 ,50 P2 ,45 P3  union all 
select 9 id_aluno ,4 id_disciplina,2009 ano ,30 P1 ,50 P2 ,60 P3  union all 
select 6 id_aluno ,16 id_disciplina,2008 ano ,100 P1 ,100 P2 ,100 P3  union all 
select 6 id_aluno ,16 id_disciplina,2009 ano ,50 P1 ,20 P2 ,40 P3  union all 
select 11 id_aluno ,22 id_disciplina,2007 ano ,70 P1 ,80 P2 ,90 P3  union all 
select 13 id_aluno ,22 id_disciplina,2007 ano ,null P1 ,null P2 ,null P3  union all 
select 2 id_aluno ,22 id_disciplina,2007 ano ,40 P1 ,60 P2 ,80 P3  union all 
select 11 id_aluno ,12 id_disciplina,2008 ano ,50 P1 ,30 P2 ,45 P3  union all 
select 9 id_aluno ,12 id_disciplina,2008 ano ,60 P1 ,50 P2 ,40 P3  union all 
select 7 id_aluno ,12 id_disciplina,2008 ano ,30 P1 ,62 P2 ,10 P3  union all 
select 7 id_aluno ,12 id_disciplina,2009 ano ,null P1 ,40 P2 ,null P3  union all 
select 5 id_aluno ,12 id_disciplina,2008 ano ,70 P1 ,80 P2 ,90 P3  union all 
select 13 id_aluno ,12 id_disciplina,2008 ano ,null P1 ,null P2 ,null P3  union all 
select 11 id_aluno ,14 id_disciplina,2009 ano ,40 P1 ,60 P2 ,70 P3  union all 
select 9 id_aluno ,14 id_disciplina,2009 ano ,60 P1 ,70 P2 ,80 P3  union all 
select 5 id_aluno ,14 id_disciplina,2009 ano ,20 P1 ,50 P2 ,80 P3  union all 
select 13 id_aluno ,14 id_disciplina,2009 ano ,40 P1 ,50 P2 ,70 P3  union all 
select 4 id_aluno ,6 id_disciplina,2008 ano ,50 P1 ,null P2 ,80 P3  union all 
select 4 id_aluno ,6 id_disciplina,2009 ano ,7 P1 ,1 P2 ,5 P3  union all 
select 11 id_aluno ,17 id_disciplina,2007 ano ,40 P1 ,60 P2 ,70 P3  union all 
select 1 id_aluno ,17 id_disciplina,2009 ano ,70 P1 ,60 P2 ,80 P3  union all 
select 11 id_aluno ,15 id_disciplina,2008 ano ,60 P1 ,70 P2 ,65 P3  union all 
select 9 id_aluno ,15 id_disciplina,2008 ano ,70 P1 ,65 P2 ,60 P3  union all 
select 9 id_aluno ,15 id_disciplina,2009 ano ,70 P1 ,80 P2 ,90 P3  union all 
select 11 id_aluno ,3 id_disciplina,2009 ano ,49 P1 ,63 P2 ,81 P3   
) ws ;

INSERT INTO public.nota( id_aluno, id_disciplina, ano,P1, P2, P3)

select id_aluno, id_disciplina, ano, P1, P2, P3    from ( 
select 13 id_aluno ,2 id_disciplina,2008 ano ,60 P1 ,60 P2 ,60 P3  union all 
select 13 id_aluno ,2 id_disciplina,2009 ano ,40 P1 ,80 P2 ,90 P3  union all 
select 6 id_aluno ,2 id_disciplina,2008 ano ,50 P1 ,60 P2 ,70 P3  union all 
select 4 id_aluno ,18 id_disciplina,2008 ano ,40 P1 ,45 P2 ,80 P3  union all 
select 7 id_aluno ,18 id_disciplina,2008 ano ,40 P1 ,50 P2 ,60 P3  union all 
select 6 id_aluno ,18 id_disciplina,2009 ano ,20 P1 ,50 P2 ,70 P3  union all 
select 4 id_aluno ,1 id_disciplina,2009 ano ,40 P1 ,30 P2 ,null P3  union all 
select 7 id_aluno ,1 id_disciplina,2009 ano ,37 P1 ,70 P2 ,100 P3  union all 
select 3 id_aluno ,13 id_disciplina,2008 ano ,60 P1 ,70 P2 ,80 P3  union all 
select 11 id_aluno ,5 id_disciplina,2007 ano ,100 P1 ,100 P2 ,100 P3  union all 
select 13 id_aluno ,5 id_disciplina,2008 ano ,50 P1 ,60 P2 ,70 P3  union all 
select 13 id_aluno ,5 id_disciplina,2009 ano ,null P1 ,null P2 ,null P3  union all 
select 13 id_aluno ,5 id_disciplina,2007 ano ,60 P1 ,60 P2 ,60 P3  union all 
select 10 id_aluno ,5 id_disciplina,2008 ano ,60 P1 ,70 P2 ,80 P3  union all 
select 2 id_aluno ,5 id_disciplina,2008 ano ,null P1 ,null P2 ,null P3  union all 
select 2 id_aluno ,5 id_disciplina,2009 ano ,40 P1 ,60 P2 ,80 P3  union all 
select 10 id_aluno ,10 id_disciplina,2009 ano ,null P1 ,90 P2 ,50 P3  union all 
select 6 id_aluno ,10 id_disciplina,2008 ano ,0 P1 ,0 P2 ,0 P3  union all 
select 6 id_aluno ,10 id_disciplina,2008 ano ,50 P1 ,60 P2 ,70 P3  union all 
select 6 id_aluno ,10 id_disciplina,2009 ano ,70 P1 ,75 P2 ,80 P3  union all 
select 1 id_aluno ,8 id_disciplina,2009 ano ,90 P1 ,90 P2 ,90 P3  union all 
select 6 id_aluno ,8 id_disciplina,2009 ano ,40 P1 ,50 P2 ,80 P3  union all 
select 9 id_aluno ,6 id_disciplina,2008 ano ,60 P1 ,65 P2 ,70 P3  union all 
select 9 id_aluno ,6 id_disciplina,2009 ano ,20 P1 ,null P2 ,60 P3  union all 
select 4 id_aluno ,6 id_disciplina,2008 ano ,50 P1 ,60 P2 ,10 P3  union all 
select 4 id_aluno ,6 id_disciplina,2009 ano ,34 P1 ,37 P2 ,70 P3  union all 
select 11 id_aluno ,7 id_disciplina,2008 ano ,60 P1 ,62 P2 ,65 P3  union all 
select 11 id_aluno ,7 id_disciplina,2009 ano ,30 P1 ,99 P2 ,50 P3  union all 
select 11 id_aluno ,11 id_disciplina,2007 ano ,50 P1 ,60 P2 ,70 P3  union all 
select 13 id_aluno ,11 id_disciplina,2007 ano ,80 P1 ,80 P2 ,80 P3  union all 
select 8 id_aluno ,11 id_disciplina,2009 ano ,60 P1 ,80 P2 ,100 P3  union all 
select 11 id_aluno ,21 id_disciplina,2008 ano ,40 P1 ,30 P2 ,55 P3  union all 
select 1 id_aluno ,21 id_disciplina,2009 ano ,80 P1 ,80 P2 ,90 P3  union all 
select 12 id_aluno ,21 id_disciplina,2008 ano ,70 P1 ,80 P2 ,90 P3  union all 
select 11 id_aluno ,9 id_disciplina,2009 ano ,65 P1 ,null P2 ,40 P3  union all 
select 7 id_aluno ,9 id_disciplina,2008 ano ,20 P1 ,20 P2 ,50 P3  union all 
select 7 id_aluno ,9 id_disciplina,2009 ano ,20 P1 ,null P2 ,null P3  union all 
select 1 id_aluno ,4 id_disciplina,2008 ano ,40 P1 ,50 P2 ,45 P3  union all 
select 9 id_aluno ,4 id_disciplina,2009 ano ,30 P1 ,50 P2 ,60 P3  union all 
select 6 id_aluno ,16 id_disciplina,2008 ano ,100 P1 ,100 P2 ,100 P3  union all 
select 6 id_aluno ,16 id_disciplina,2009 ano ,50 P1 ,20 P2 ,40 P3  union all 
select 11 id_aluno ,22 id_disciplina,2007 ano ,70 P1 ,80 P2 ,90 P3  union all 
select 13 id_aluno ,22 id_disciplina,2007 ano ,null P1 ,null P2 ,null P3  union all 
select 2 id_aluno ,22 id_disciplina,2007 ano ,40 P1 ,60 P2 ,80 P3  union all 
select 11 id_aluno ,12 id_disciplina,2008 ano ,50 P1 ,30 P2 ,45 P3  union all 
select 9 id_aluno ,12 id_disciplina,2008 ano ,60 P1 ,50 P2 ,40 P3  union all 
select 7 id_aluno ,12 id_disciplina,2008 ano ,30 P1 ,62 P2 ,10 P3  union all 
select 7 id_aluno ,12 id_disciplina,2009 ano ,null P1 ,40 P2 ,null P3  union all 
select 5 id_aluno ,12 id_disciplina,2008 ano ,70 P1 ,80 P2 ,90 P3  union all 
select 13 id_aluno ,12 id_disciplina,2008 ano ,null P1 ,null P2 ,null P3  union all 
select 11 id_aluno ,14 id_disciplina,2009 ano ,40 P1 ,60 P2 ,70 P3  union all 
select 9 id_aluno ,14 id_disciplina,2009 ano ,60 P1 ,70 P2 ,80 P3  union all 
select 5 id_aluno ,14 id_disciplina,2009 ano ,20 P1 ,50 P2 ,80 P3  union all 
select 13 id_aluno ,14 id_disciplina,2009 ano ,40 P1 ,50 P2 ,70 P3  union all 
select 4 id_aluno ,6 id_disciplina,2008 ano ,50 P1 ,null P2 ,80 P3  union all 
select 4 id_aluno ,6 id_disciplina,2009 ano ,7 P1 ,1 P2 ,5 P3  union all 
select 11 id_aluno ,17 id_disciplina,2007 ano ,40 P1 ,60 P2 ,70 P3  union all 
select 1 id_aluno ,17 id_disciplina,2009 ano ,70 P1 ,60 P2 ,80 P3  union all 
select 11 id_aluno ,15 id_disciplina,2008 ano ,60 P1 ,70 P2 ,65 P3  union all 
select 9 id_aluno ,15 id_disciplina,2008 ano ,70 P1 ,65 P2 ,60 P3  union all 
select 9 id_aluno ,15 id_disciplina,2009 ano ,70 P1 ,80 P2 ,90 P3  union all 
select 11 id_aluno ,3 id_disciplina,2009 ano ,49 P1 ,63 P2 ,81 P3   
) ws ;

INSERT INTO public.nota( id_aluno, id_disciplina, ano,P1, P2, P3  )

select id_aluno, id_disciplina, ano, P1, P2, P3    from ( 
select 13 id_aluno ,2 id_disciplina,2008 ano ,60 P1 ,60 P2 ,60 P3  union all 
select 13 id_aluno ,2 id_disciplina,2009 ano ,40 P1 ,80 P2 ,90 P3  union all 
select 6 id_aluno ,2 id_disciplina,2008 ano ,50 P1 ,60 P2 ,70 P3  union all 
select 4 id_aluno ,18 id_disciplina,2008 ano ,40 P1 ,45 P2 ,80 P3  union all 
select 7 id_aluno ,18 id_disciplina,2008 ano ,40 P1 ,50 P2 ,60 P3  union all 
select 6 id_aluno ,18 id_disciplina,2009 ano ,20 P1 ,50 P2 ,70 P3  union all 
select 4 id_aluno ,1 id_disciplina,2009 ano ,40 P1 ,30 P2 ,null P3  union all 
select 7 id_aluno ,1 id_disciplina,2009 ano ,37 P1 ,70 P2 ,100 P3  union all 
select 3 id_aluno ,13 id_disciplina,2008 ano ,60 P1 ,70 P2 ,80 P3  union all 
select 11 id_aluno ,5 id_disciplina,2007 ano ,100 P1 ,100 P2 ,100 P3  union all 
select 13 id_aluno ,5 id_disciplina,2008 ano ,50 P1 ,60 P2 ,70 P3  union all 
select 13 id_aluno ,5 id_disciplina,2009 ano ,null P1 ,null P2 ,null P3  union all 
select 13 id_aluno ,5 id_disciplina,2007 ano ,60 P1 ,60 P2 ,60 P3  union all 
select 10 id_aluno ,5 id_disciplina,2008 ano ,60 P1 ,70 P2 ,80 P3  union all 
select 2 id_aluno ,5 id_disciplina,2008 ano ,null P1 ,null P2 ,null P3  union all 
select 2 id_aluno ,5 id_disciplina,2009 ano ,40 P1 ,60 P2 ,80 P3  union all 
select 10 id_aluno ,10 id_disciplina,2009 ano ,null P1 ,90 P2 ,50 P3  union all 
select 6 id_aluno ,10 id_disciplina,2008 ano ,0 P1 ,0 P2 ,0 P3  union all 
select 6 id_aluno ,10 id_disciplina,2008 ano ,50 P1 ,60 P2 ,70 P3  union all 
select 6 id_aluno ,10 id_disciplina,2009 ano ,70 P1 ,75 P2 ,80 P3  union all 
select 1 id_aluno ,8 id_disciplina,2009 ano ,90 P1 ,90 P2 ,90 P3  union all 
select 6 id_aluno ,8 id_disciplina,2009 ano ,40 P1 ,50 P2 ,80 P3  union all 
select 9 id_aluno ,6 id_disciplina,2008 ano ,60 P1 ,65 P2 ,70 P3  union all 
select 9 id_aluno ,6 id_disciplina,2009 ano ,20 P1 ,null P2 ,60 P3  union all 
select 4 id_aluno ,6 id_disciplina,2008 ano ,50 P1 ,60 P2 ,10 P3  union all 
select 4 id_aluno ,6 id_disciplina,2009 ano ,34 P1 ,37 P2 ,70 P3  union all 
select 11 id_aluno ,7 id_disciplina,2008 ano ,60 P1 ,62 P2 ,65 P3  union all 
select 11 id_aluno ,7 id_disciplina,2009 ano ,30 P1 ,99 P2 ,50 P3  union all 
select 11 id_aluno ,11 id_disciplina,2007 ano ,50 P1 ,60 P2 ,70 P3  union all 
select 13 id_aluno ,11 id_disciplina,2007 ano ,80 P1 ,80 P2 ,80 P3  union all 
select 8 id_aluno ,11 id_disciplina,2009 ano ,60 P1 ,80 P2 ,100 P3  union all 
select 11 id_aluno ,21 id_disciplina,2008 ano ,40 P1 ,30 P2 ,55 P3  union all 
select 1 id_aluno ,21 id_disciplina,2009 ano ,80 P1 ,80 P2 ,90 P3  union all 
select 12 id_aluno ,21 id_disciplina,2008 ano ,70 P1 ,80 P2 ,90 P3  union all 
select 11 id_aluno ,9 id_disciplina,2009 ano ,65 P1 ,null P2 ,40 P3  union all 
select 7 id_aluno ,9 id_disciplina,2008 ano ,20 P1 ,20 P2 ,50 P3  union all 
select 7 id_aluno ,9 id_disciplina,2009 ano ,20 P1 ,null P2 ,null P3  union all 
select 1 id_aluno ,4 id_disciplina,2008 ano ,40 P1 ,50 P2 ,45 P3  union all 
select 9 id_aluno ,4 id_disciplina,2009 ano ,30 P1 ,50 P2 ,60 P3  union all 
select 6 id_aluno ,16 id_disciplina,2008 ano ,100 P1 ,100 P2 ,100 P3  union all 
select 6 id_aluno ,16 id_disciplina,2009 ano ,50 P1 ,20 P2 ,40 P3  union all 
select 11 id_aluno ,22 id_disciplina,2007 ano ,70 P1 ,80 P2 ,90 P3  union all 
select 13 id_aluno ,22 id_disciplina,2007 ano ,null P1 ,null P2 ,null P3  union all 
select 2 id_aluno ,22 id_disciplina,2007 ano ,40 P1 ,60 P2 ,80 P3  union all 
select 11 id_aluno ,12 id_disciplina,2008 ano ,50 P1 ,30 P2 ,45 P3  union all 
select 9 id_aluno ,12 id_disciplina,2008 ano ,60 P1 ,50 P2 ,40 P3  union all 
select 7 id_aluno ,12 id_disciplina,2008 ano ,30 P1 ,62 P2 ,10 P3  union all 
select 7 id_aluno ,12 id_disciplina,2009 ano ,null P1 ,40 P2 ,null P3  union all 
select 5 id_aluno ,12 id_disciplina,2008 ano ,70 P1 ,80 P2 ,90 P3  union all 
select 13 id_aluno ,12 id_disciplina,2008 ano ,null P1 ,null P2 ,null P3  union all 
select 11 id_aluno ,14 id_disciplina,2009 ano ,40 P1 ,60 P2 ,70 P3  union all 
select 9 id_aluno ,14 id_disciplina,2009 ano ,60 P1 ,70 P2 ,80 P3  union all 
select 5 id_aluno ,14 id_disciplina,2009 ano ,20 P1 ,50 P2 ,80 P3  union all 
select 13 id_aluno ,14 id_disciplina,2009 ano ,40 P1 ,50 P2 ,70 P3  union all 
select 4 id_aluno ,6 id_disciplina,2008 ano ,50 P1 ,null P2 ,80 P3  union all 
select 4 id_aluno ,6 id_disciplina,2009 ano ,7 P1 ,1 P2 ,5 P3  union all 
select 11 id_aluno ,17 id_disciplina,2007 ano ,40 P1 ,60 P2 ,70 P3  union all 
select 1 id_aluno ,17 id_disciplina,2009 ano ,70 P1 ,60 P2 ,80 P3  union all 
select 11 id_aluno ,15 id_disciplina,2008 ano ,60 P1 ,70 P2 ,65 P3  union all 
select 9 id_aluno ,15 id_disciplina,2008 ano ,70 P1 ,65 P2 ,60 P3  union all 
select 9 id_aluno ,15 id_disciplina,2009 ano ,70 P1 ,80 P2 ,90 P3  union all 
select 11 id_aluno ,3 id_disciplina,2009 ano ,49 P1 ,63 P2 ,81 P3   
) ws ;
