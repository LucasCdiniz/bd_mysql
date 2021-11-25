/*Criando o nosso banco*/

create database db_ecommerce;

/*Utilizando o nosso banco*/
use db_ecommerce;

/*Criando a tabela*/
create table tb_produtos(
	id bigint unique auto_increment,
    nome varchar(50) not null,
    unidade char(5),
    precoDeVenda decimal(10,2) not null,
    setor varchar(20) not null,
    
    primary key(id)
);

/*Populando a tabela*/
insert into tb_produtos(nome, unidade, precoDeVenda, setor) values("Trakinas de limão", 'UN', 4.99,"Alimentícios");
insert into tb_produtos(nome, unidade, precoDeVenda, setor) values("Carne moída", 'KG', 20.99,"Alimentícios");
insert into tb_produtos(nome, unidade, precoDeVenda, setor) values("Veja limpeza pesada", 'UN', 7.90,"Limpeza");
insert into tb_produtos(nome, unidade, precoDeVenda, setor) values("Pneus Aro 22", 'UN', 745.99,"Automóvel");
insert into tb_produtos(nome, unidade, precoDeVenda, setor) values("Geladeira", 'UN', 1700.49,"Eletrodoésticos");
insert into tb_produtos(nome, unidade, precoDeVenda, setor) values("Cadeira Gamer", 'UN', 2300.00,"Lazer");
insert into tb_produtos(nome, unidade, precoDeVenda, setor) values("Caixa de Cholate", 'CX', 6.99,"Alimentícios");
insert into tb_produtos(nome, unidade, precoDeVenda, setor) values("Tapete do Aladdin", 'UN', 429.89,"Decoração");

select * from tb_produtos;

/*Apresenta os produtos com um valor maior que 500*/
select nome, setor, precoDeVenda from tb_produtos where precoDeVenda > 500;

/*Atualizando o preço do item correspondente ao id 2*/
update tb_produtos set precoDeVenda = 523.12
where id = 2;

/*Apresenta os produtos com um valor menor que 500*/
select nome, setor, precoDeVenda from tb_produtos where precoDeVenda < 500;

/*Apresentando os produtos que possuem informações em seu nome entre a palavra "da"*/
select * from tb_produtos where nome like "%da%";