create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(

	id bigint auto_increment,
    categoria varchar(255),
    tamanho varchar(255),
    
    primary key(id)

);

create table tb_pizza(

	id bigint auto_increment,
    sabor varchar(255),
    borda varchar(255),
    preco decimal(10,2),
    id_categoria bigint,
    
    primary key (id),
    foreign key (id_categoria) references tb_categoria(id)

);

insert into tb_categoria(categoria, tamanho) value ("Doce", "Grande");
insert into tb_categoria(categoria, tamanho) value ("Doce", "Brotinho");
insert into tb_categoria(categoria, tamanho) value ("Salgada", "Grande");
insert into tb_categoria(categoria, tamanho) value ("Salgada", "Brotinho");
insert into tb_categoria(categoria, tamanho) value ("Meio a Meio", "Grande");
insert into tb_categoria(categoria, tamanho) value ("Meio a Meio", "Brotinho");

select * from tb_categoria;

insert into tb_pizza(sabor, borda, preco, id_categoria) value ("Romeu e Julieta", "Recheada", 43.98, 1);
insert into tb_pizza(sabor, borda, preco, id_categoria) value ("Romeu e Julieta", "Recheada", 21.99, 2);
insert into tb_pizza(sabor, borda, preco, id_categoria) value ("Calabresa", "Recheada", 42.99, 3);
insert into tb_pizza(sabor, borda, preco, id_categoria) value ("Mussarela", "Fina", 21.49, 4);
insert into tb_pizza(sabor, borda, preco, id_categoria) value ("Meia Calabresa meia Mussarela", "Fina", 54.99, 5);
insert into tb_pizza(sabor, borda, preco, id_categoria) value ("Meia Calabresa meia Mussarela", "Recheada", 29.49, 6);
insert into tb_pizza(sabor, borda, preco, id_categoria) value ("Havaiana", "Recheada", 79.99, 3);
insert into tb_pizza(sabor, borda, preco, id_categoria) value ("Chocolate", "Fina", 40.99, 1);

select * from tb_pizza;

select * from tb_pizza where preco > 45;
select * from tb_pizza where preco between 3 and 60;
select * from tb_pizza where sabor like 'C%';
select * from tb_pizza inner join tb_categoria on tb_pizza.id_categoria = tb_categoria.id;
select * from tb_pizza as id_categoria inner join tb_categoria as categoria on id_categoria = categoria like 'Doce%'