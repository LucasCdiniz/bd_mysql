/*Criando o nosso banco*/
create database db_rhempresa;

/*Acessando o nosso banco*/
use db_rhempresa;

/*Criação da tabela tb_funcionarios*/
create table tb_funcionarios(
	id bigint unique auto_increment,
    nome varchar(30),
    cpf varchar(11),
    idade int,
    setor varchar(20),
    salario double(10,2),
    
    primary key (id)
);

/*Populando a tabela*/
insert into tb_funcionarios (nome, cpf, idade, setor, salario)values ("Lucas Diniz","12345678906",22,"Desenvolvimento",3000.00);
insert into tb_funcionarios (nome, cpf, idade, setor, salario)values ("Antonio Istarque","20345498906",53,"Financeiror",2500.00);
insert into tb_funcionarios (nome, cpf, idade, setor, salario)values ("Alex Andre","11645678906",43,"Vendas",8493.22);
insert into tb_funcionarios (nome, cpf, idade, setor, salario)values ("Felipe Jorge","12345641906",18,"Administrativo",1700.00);
insert into tb_funcionarios (nome, cpf, idade, setor, salario)values ("Gláucio Freitas","12348778901",19,"Financeiro",1200.96);

/*Visualizando todos os dados inseridos*/
select * from tb_funcionarios;

/*Apresenta os funcionarios com um salário maior que 2000*/
select nome, salario from tb_funcionarios where salario > 2000;

/*Apresenta os funcionarios com um salário menor que 2000*/
select nome, salario from tb_funcionarios where salario < 2000;

/*Fazendo a atualização do nome do funcionário correspondente ao id 3*/
update tb_funcionarios set nome = "Alexandre"
where id = 3;

/*Conferindo a atualização*/
select nome from tb_funcionarios where id =3;
