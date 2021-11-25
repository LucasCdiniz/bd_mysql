create database db_brecho;

use db_brecho;


create table tb_produtos(
	id bigint auto_increment, /*COLOCAR O UNIQUE */
    nome varchar(255) not null,
    quantidade int,
    preco decimal(10,2) not null,
    
    primary key(id)
);

select * from tb_produtos;

insert into tb_produtos(nome, quantidade, preco) Values ("Bolacha Trakinas sabor limão",5, 10);
insert into tb_produtos(nome, quantidade, preco) Values ("Armadilheira",44, 23.49);
insert into tb_produtos(nome, quantidade, preco) Values ("Sacola Plástica",2,66.89);


alter table tb_produtos modify preco decimal(8,2);
update tb_produtos set preco = 22.19
where id=1;

delete from tb_produtos where id =2;

/*delete from tb_produtos set id=1 where id=3*/

alter table tb_produtos add descricao varchar(20);

insert into tb_produtos(nome, quantidade, preco, descricao) Values ("Sabonete do avô",5, 43.99, "Cheiroso demaaais");

alter table tb_produtos drop descricao;

/*PERIGO/RISCOS - Descabilita o safe mode e ai você conseguirá fazer update sem where*/
set sql_safe_updates = 0;
delete from tb_produtos;