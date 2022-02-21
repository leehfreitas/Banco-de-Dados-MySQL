create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(

	id bigint auto_increment,
    descricao varchar(255),
    
    primary key(id)

);

create table tb_curso(

	id bigint auto_increment,
    descricao varchar(255),
    duracao varchar(255),
    preco decimal(10,2),
    id_categoria bigint,
    
    primary key(id),
    foreign key(id_categoria) references tb_categoria(id)

);

insert into tb_categoria(descricao) value ("Informatica");
insert into tb_categoria(descricao) value ("Saúde");
insert into tb_categoria(descricao) value ("Biologicas");
insert into tb_categoria(descricao) value ("Humanas");
insert into tb_categoria(descricao) value ("Exatas");

insert into tb_curso(descricao, duracao, preco, id_categoria) value ("Ciência da Computação", "8 Semestres", 987.99, 1);
insert into tb_curso(descricao, duracao, preco, id_categoria) value ("Analise e Desenvolvimento de Sistemas", "4 Semestres", 657.99, 1);
insert into tb_curso(descricao, duracao, preco, id_categoria) value ("Medicina", "12 Semestres", 4532.99, 2);
insert into tb_curso(descricao, duracao, preco, id_categoria) value ("Medicina Veterinaria", "10 Semestres", 3232.99, 3);
insert into tb_curso(descricao, duracao, preco, id_categoria) value ("Letras", "8 Semestres", 2532.99, 4);
insert into tb_curso(descricao, duracao, preco, id_categoria) value ("Matematica", "8 Semestres", 2522.99, 5);
insert into tb_curso(descricao, duracao, preco, id_categoria) value ("Biomedicina", "10 Semestres", 3532.99, 3);
insert into tb_curso(descricao, duracao, preco, id_categoria) value ("Engenharia da Computação", "8 Semestres", 887.99, 1);

select * from tb_curso where preco > 50;
select * from tb_curso where preco between 3 and 60;
select * from tb_curso where descricao like 'J%';
select * from tb_curso inner join tb_categoria on tb_curso.id_categoria = tb_categoria.id;
select * from tb_curso as id_categoria inner join tb_categoria on id_categoria = tb_categoria.descricao like 'Informatica%';

select * from tb_curso;