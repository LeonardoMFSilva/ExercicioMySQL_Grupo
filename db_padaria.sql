
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

create table tb_cliente(
id bigint auto_increment,
nome varchar (255),
cpf char (11),
celular char (12),
endereco varchar (255),
numero int,
cep char(8),

primary key (id)
);

insert into tb_cliente (nome, cpf, celular, endereco, numero, cep) values ("Caio", "11111111111", "19111111111", "Campinas", 1, "01111111");
insert into tb_cliente (nome, cpf, celular, endereco, numero, cep) values ("Erci", "22222222222", "19222222222", "Campinas", 2, "02222222");
insert into tb_cliente (nome, cpf, celular, endereco, numero, cep) values ("Leo", "33333333333", "193333333333", "Campinas", 3, "03333333");
insert into tb_cliente (nome, cpf, celular, endereco, numero, cep) values ("Lukinhas", "44444444444", "194444444444", "Campinas", 4, "04444444");
insert into tb_cliente (nome, cpf, celular, endereco, numero, cep) values ("Vitinho", "55555555555", "195555555555", "Campinas", 5, "05555555");


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

CREATE TABLE bebidas(
	id bigint(4) auto_increment,
    descricao varchar(60),
    disponivel boolean,
    valor decimal(5,2),
    primary key(id)
);

INSERT INTO bebidas (descricao, disponivel, valor) VALUES ("Delvalle 500ml", true, 5.00);
INSERT INTO bebidas (descricao, disponivel, valor) VALUES ("Suco de laranja 500ml", true, 5.00);
INSERT INTO bebidas (descricao, disponivel, valor) VALUES ("Coca-cola 500ml", true, 5.50);
INSERT INTO bebidas (descricao, disponivel, valor) VALUES ("Guaraná 2l", true, 9.00);
INSERT INTO bebidas (descricao, disponivel, valor) VALUES ("Tampico 2l", true, 7.00);

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
on tb_comanda.cliente_id = tb_cliente.id; 
