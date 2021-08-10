CREATE DATABASE Prova
USE Prova

CREATE TABLE Cliente (
	id integer identity(1,1),
	nome varchar(255) not null,
	cpf varchar(255) not null,
	idade integer not null
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


insert into cliente (nome,cpf,idade) values
	('Daniela',321456987,19)
	
	select * from Cliente

insert into funcionario (nome,cpf) values
	('David',125469873)
	
	select * from funcionario

insert into produto (descricao, valor, quantidade) values
	('Ovo de Chocolate',100.00,800)

	
	select*from produto

	
	insert into vendas (data_venda, total) values
	('queijo de cuia',150.00,50),
	('vinho branco',50.00, 45),
	('cesta de pinic',200.00, 25)

	select*from produto_venda

	