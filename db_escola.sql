-- Criação do banco de Dados
create database db_escola;

-- Usando o banco de dados para as querys
use db_escola;

-- criando a tabela
create table tb_alunos(
	Id bigint(5) auto_increment,
    	Nome varchar(20) not null,
    	Idade int(3) not null,
    	Turma int (5) not null,
    	Nota decimal (2,1) not null,
    
    	primary key(id)
);

-- Inserindo os valores na minha tabela.

insert into tb_alunos (Nome, Idade, Turma, Nota) values ("Gabriel Duarte", 27, 39, 9.9);
insert into tb_alunos (Nome, Idade, Turma, Nota) values ("Gabrielly", 20, 39, 9.1);
insert into tb_alunos (Nome, Idade, Turma, Nota) values ("Mariana", 24, 39, 9.8);
insert into tb_alunos (Nome, Idade, Turma, Nota) values ("Gabriel Costa", 19, 39, 7.2);
insert into tb_alunos (Nome, Idade, Turma, Nota) values ("Marco", 27, 39, 7.7);
insert into tb_alunos (Nome, Idade, Turma, Nota) values ("Yasmim", 20, 39, 8.7);
insert into tb_alunos (Nome, Idade, Turma, Nota) values ("Guilherme", 25, 39, 8.0);
insert into tb_alunos (Nome, Idade, Turma, Nota) values ("João", 21, 39, 9.1);

-- Selecionando os alunos com nota maior que 9

select * from tb_alunos where Nota > 9;

-- Selecionando os alunos com nota menor que 9

select * from tb_alunos where Nota < 9;

-- Atualizando um dado da minha tabela

update tb_alunos set Nota = 8
	where id = 9;      