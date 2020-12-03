
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




create table tb_tipo_bolo(
	id bigint auto_increment,
    descricao varchar(100) not null,
    disponivel boolean,
    amanhecido boolean,
    valor decimal(10,2),
    
    primary key (id)
);


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



use db_padaria;
create table tb_forma_pgm (
id bigint auto_increment,
forma char(30) not null,
debito boolean,
primary key (id)
);

insert into tb_forma_pgm (forma, debito) values ("cartão", true);
insert into tb_forma_pgm (forma, debito) values ("cartão", false);
insert into tb_forma_pgm (forma, debito) values ("dinheiro", true);

use db_padaria;
create table tb_comanda(
id bigint(10) auto_increment,
descricao varchar(255) not null,
tipo_pao_id bigint,
tipo_bolo_id bigint,
tipo_bebida_id bigint,
forma_pag_id bigint,
cliente_id bigint,
primary key(id),
foreign key(tipo_pao_id)references tb_tipo_pao(id),
foreign key(tipo_bolo_id)references tb_tipo_bolo(id),
foreign key(tipo_bebida_id)references bebidas(id),
foreign key(forma_pag_id)references tb_forma_pgm(id),
foreign key(cliente_id)references tb_cliente(id)
);

insert into tb_comanda(descricao,tipo_pao_id,tipo_bolo_id,tipo_bebida_id,forma_pag_id,cliente_id)
values ("sua comanda foi ",1,1,1,1,1);
 
use db_padaria;
SELECT * FROM tb_comanda
inner join tb_cliente
on tb_comanda.id = tb_cliente.cliente_id; 

/*inner join tb_cliente,tb_forma_pgm,tb_tipo_bolo,tb_tipo_pao
on tb_comanda.id = tb_cliente.cliente_id,tb_forma_pgm.forma_pag_id,tb_tipo_bolo.tipo_bolo_id,tb_tipo_pao.tipo_pao_id;
*/
