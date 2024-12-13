--crud

sp_help aluno;

insert into aluno(codigo, nome, datanasc, email)
	values (90, 'aluno1', '2000-05-13', '90@gmail.com');


insert into aluno(codigo, nome, datanasc, email)
	values (80, 'aluno1', '2000-05-13', null);

insert into aluno(codigo, nome, datanasc, email)
	values (70, 'aluno1', '2003-06-13', '70@gmail.com');


select codigo, nome, email, datanasc from aluno;

select codigo, nome, email, datanasc 
	from aluno
	where nome like 'a%';

sp_help departamento;

insert into departamento(nome)
	values('RH');

insert into departamento(nome)
	values('ADM');

select * from departamento;

sp_help funcionario;

insert into funcionario(codigo, nome, iddep)
	values(100, 'f1', 2);

insert into funcionario(codigo, nome, iddep)
	values(110, 'f2', 1);

select * from funcionario;

insert into departamento(nome)
	values('Compras');

update funcionario set iddep=3 where codigo = 110;

delete from departamento where id = 3;

select * from funcionario;
select * from departamento;


--inner join é igual a join

select *
	from departamento
	inner join funcionario on departamento.id=funcionario.iddep;

select *
	from departamento
	left join funcionario on departamento.id=funcionario.iddep;

select *
	from departamento
	right join funcionario on departamento.id=funcionario.iddep;

select *
	from departamento
	full join funcionario on departamento.id=funcionario.iddep;