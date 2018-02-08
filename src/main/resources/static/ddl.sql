CREATE TABLE cliente(
	ID 		SERIAL 			PRIMARY KEY,
	NOME 		VARCHAR(255)  		NOT NULL,
	ENDERECO 	VARCHAR(255) 		NOT NULL,
	CPF 		VARCHAR(11) 		UNIQUE NOT NULL
);

CREATE TABLE compra(
	ID 			SERIAL			PRIMARY KEY,
	VALOR_TOTAL 		NUMERIC(10,2)  		NOT NULL,
	NUMERO_PRODUTOS		INTEGER			NOT NULL,
	CLIENTE_ID		INTEGER			REFERENCES CLIENTE(ID) NOT NULL
);

select * from cliente;

insert into cliente(id, cpf, endereco, nome) values(1, '1275634645', 'Avenida Paulista 1020', 'Eduardo');
insert into cliente(id, cpf, endereco, nome) values(2, '1234345423', 'Avenida Rebouças 1500', 'Luiz');
insert into cliente(id, cpf, endereco, nome) values(3, '6545645654', 'Rua dos Pinheiros 2000', 'Bruna');
insert into cliente(id, cpf, endereco, nome) values(4, '6452345234', 'Alameda Santos 120', 'Sonia');
insert into cliente(id, cpf, endereco, nome) values(5, '7565345325', 'Rua XV de Novembro 2012', 'Brianda');
insert into cliente(id, cpf, endereco, nome) values(6, '6456563454', 'Rua 7 de Setembro 2001', 'Enio');
insert into cliente(id, cpf, endereco, nome) values(7, '7565345645', 'Avenida Brasil 201', 'Marcelo');

SELECT * FROM compra;
TRUNCATE compra;

  insert into compra (id, numero_produtos, valor_total, cliente_id) values (1, 5, 100, 1);
  insert into compra (id, numero_produtos, valor_total, cliente_id)  values (2, 2, 500, 1);
  insert into compra (id, numero_produtos, valor_total, cliente_id)  values (3, 7, 600, 2);
  insert into compra (id, numero_produtos, valor_total, cliente_id)  values (4, 2, 200, 2);
  insert into compra (id, numero_produtos, valor_total, cliente_id)  values (5, 8, 300, 2);
  insert into compra (id, numero_produtos, valor_total, cliente_id)  values (6, 9, 400, 3); 
  insert into compra (id, numero_produtos, valor_total, cliente_id)  values (7, 3, 300, 4);
  insert into compra (id, numero_produtos, valor_total, cliente_id)  values (8, 2, 200, 4);
  insert into compra (id, numero_produtos, valor_total, cliente_id)  values (9, 9, 400, 4);
  insert into compra (id, numero_produtos, valor_total, cliente_id)  values (10, 8, 1000, 5);
  insert into compra (id, numero_produtos, valor_total, cliente_id)  values (11, 8, 99.50, 5);
  insert into compra (id, numero_produtos, valor_total, cliente_id)  values (12, 8, 99.9, 5);

  SELECT CI.NOME, CO.NUMERO_PRODUTOS
  FROM COMPRA AS CO
  INNER JOIN CLIENTE AS CI ON (CO.CLIENTE_ID = CI.ID)
  WHERE CI.ID = 4
  ;
  