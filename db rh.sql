-- Criaçao do banco de dados
create database db_rh;

-- Usando o banco de dados para as querys
use db_rh;

-- criando a tabela
create table tb_funcionarios(
		id bigint auto_increment,
	nome varchar(20) not null,
	idade int (3) not null,
	salario decimal (10,2),
	ativo boolean,
        
	primary key(id)
);
        
-- Inserindo os valores na minha tabela
insert into tb_funcionarios (nome,idade,salario,ativo) values (Rayssa , 25, 3000, true);
insert into tb_funcionarios (nome,idade,salario,ativo) values (Wellington , 22, 5000, true);
insert into tb_funcionarios (nome,idade,salario,ativo) values (Sophia , 27, 1500, true);
insert into tb_funcionarios (nome,idade,salario,ativo) values (Angela , 40, 7500, true);
insert into tb_funcionarios (nome,idade,salario,ativo) values (Gabriel , 24, 2800, true);

-- Selecionando os funcionarios com salario maior que 2000
select * from tb_funcionarios where salario > 2000;

-- selecionando os funcionarios com salario menor que 2000
select * from tb_funcionarios where salario < 2000;

-- Atualizando um dado da minha tabela
update tb_funcionarios set salario = 10000.00
        where id = 1;             