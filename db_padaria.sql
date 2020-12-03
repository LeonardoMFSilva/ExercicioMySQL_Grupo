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