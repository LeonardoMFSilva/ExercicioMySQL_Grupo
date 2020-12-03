<<<<<<< HEAD
/*create database db_padaria ;    
use db_padaria;*/

/*create table tb_tipo_pao (
id bigint(4) auto_increment,
descricao varchar(70) not null,
disponivel boolean,
preco decimal(5,2),             -- (quantidade total,quantidade decimal)
primary key(id)
)*/

-- Adicionando produtos a minha lista 
/*insert into tb_tipo_pao (descricao,disponivel,preco) values ("Pão de queijo",true,2.50);
insert into tb_tipo_pao (descricao,disponivel,preco) values ("Pão de mel",true,4.50);
insert into tb_tipo_pao (descricao,disponivel,preco) values ("Pão de forma",true,5.00);
insert into tb_tipo_pao (descricao,disponivel,preco) values ("Pão grances",true,10.00);
insert into tb_tipo_pao (descricao,disponivel,preco) values ("Pão caseiro",false,29.50); */

select * from tb_tipo_pao where preco> 5;
=======
/*
create database db_padaria;
use db_padaria;

create table tb_tipo_bolo(
	id bigint auto_increment,
    descricao varchar(100) not null,
    disponivel boolean,
    amanhecido boolean,
    valor decimal(10,2),
    
    primary key (id)
);
*/

insert into tb_tipo_bolo (descricao, disponivel, amanhecido, valor)
	values ("bolo de cenoura", true, true, 14.99);
insert into tb_tipo_bolo (descricao, disponivel, amanhecido, valor)
	values ("bolo de laranja", true, true, 11.99);
insert into tb_tipo_bolo (descricao, disponivel, amanhecido, valor)
	values ("bolo de chocolate", false, true, 14.99);
insert into tb_tipo_bolo (descricao, disponivel, amanhecido, valor)
	values ("bolo de mousse de limao", true, false, 14.99);
insert into tb_tipo_bolo (descricao, disponivel, amanhecido, valor)
	values ("bolo de festa", true, true, 14.99);


>>>>>>> origin/tipo_bolo
