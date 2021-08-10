CREATE DATABASE elitte
USE elitte

CREATE TABLE cliente(
	id integer identity(1,1),
	nome varchar(255) not null,
	cpf varchar(255) not null,
	idade integer not null
	primary key(id)
);
GO

ALTER TABLE cliente
ADD pedido text not null

ALTER TABLE cliente
ADD valor_produto varchar(255) not null

ALTER TABLE cliente
DROP COLUMN cpf

select * from cliente

CREATE TABLE Fornecedor(
	id integer identity(1,1),
	nomeFantasia varchar(255) not null,
	CNPJ varchar(255) not null,
	primary key(id)
);
GO
CREATE TABLE Funcionario (
	id integer identity(1,1),
	nome varchar(255) not null,
	cpf varchar(255) not null,
	primary key(id)
	
);
GO

CREATE TABLE Produto (
	id integer identity(1,1),
	descricao varchar(255) not null,
	valor float not null,
	quantidade integer not null
	PRIMARY KEY(id)
);
GO

CREATE TABLE Vendas (
	id integer identity(1,1),
	id_cliente int foreign key references cliente(id),
	id_funcionario int foreign key references Funcionario(id),
	data_venda date,
	total float,
	primary key(id)
);
GO

CREATE TABLE produto_venda (
	id integer identity(1,1),
	id_produto int foreign key references produto(id),
	id_venda int foreign key references vendas(id),
	primary key(id)
);
GO