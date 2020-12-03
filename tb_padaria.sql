use db_padaria;
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

