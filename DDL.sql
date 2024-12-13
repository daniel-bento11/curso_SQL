--DDL

create database escola;
use escola;

create table departamento(
	id int not null identity(1,1),
	nome varchar(100) not null,
	constraint pk_departamento primary key (id)
);

create table aluno(
	codigo int,
	nome varchar (200) not null,
	datanasc date not null,
	email varchar(500) unique,
	constraint pk_aluno primary key (codigo),
);

sp_help aluno;

create table funcionario(
	codigo int,
	nome varchar(100) not null,
	iddep int,
	constraint pk_funcionario primary key (codigo),
	constraint fk_funcionario_departamento foreign key (iddep)
		references departamento(id)
);