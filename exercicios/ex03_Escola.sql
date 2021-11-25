create database db_escola;

use db_escola;

create table alunos(
	id bigint unique auto_increment,
    nome varchar(30),
    curso varchar(30),
    periodo varchar(10),
    materia varchar(30),
    nota decimal(8,1),
    
    primary key (id)
);


insert into alunos (nome,curso,periodo,materia,nota) values ("Lucas Diniz", "Ciência da Computação", "Noturno", "Teoria de Grafos", 7.5);
insert into alunos (nome,curso,periodo,materia,nota) values ("Lucas Diniz", "Ciência da Computação", "Noturno", "Matemática discreta", 9.5);
insert into alunos (nome,curso,periodo,materia,nota) values ("Alanis", "Sistema da Informação", "Diurno", "Redes", 10);
insert into alunos (nome,curso,periodo,materia,nota) values ("Silvia Campos", "Psicologia", "Noturno", "Neuropsicologia", 5.5);
insert into alunos (nome,curso,periodo,materia,nota) values ("Danilo Silva", "Ciência da Computação", "Noturno", "Estrutura de Dados", 2.0);
insert into alunos (nome,curso,periodo,materia,nota) values ("Igor Pires", "Ciência da Computação", "Diurno", "DAW", 6.0);
insert into alunos (nome,curso,periodo,materia,nota) values ("Sabrina Teixeira", "Enfermagem", "Diurno", "Práticas Profissionais", 8.5);
insert into alunos (nome,curso,periodo,materia,nota) values ("Marcia Almeida", "Pedagogia", "Noturno", "Educação Inclusiva", 7.5);
insert into alunos (nome,curso,periodo,materia,nota) values ("Alexandre Menezes", "Pedagogia", "Diurno", "Educação Inclusiva", 3.0);
insert into alunos (nome,curso,periodo,materia,nota) values ("Flávio Arruda", "Pedagogia", "Diurno", "Educação Inclusiva", 4.0);
insert into alunos (nome,curso,periodo,materia,nota) values ("Carlos Almeida", "Pedagogia", "Noturno", "Educação Inclusiva", 6.0);

select*from alunos;

/*Atualizando o nome correspondente ao id 2*/
update alunos set nome = "José Paulo" where id = 2;

/*Apresentando a nota dos alunos de Ciênncia da Computação que é maior que 7*/
select nome, materia, nota from alunos
where nota > 7 and curso = "Ciência da Computação";

/*Apresentando a nota dos alunos de Pedagogia que é menor que 7*/
select *from alunos
where nota < 7 and curso = "Pedagogia";