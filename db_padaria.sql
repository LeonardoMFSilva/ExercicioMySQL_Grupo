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


