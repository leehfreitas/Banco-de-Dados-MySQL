create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(

	id bigint auto_increment,
    descricao varchar(255),
    
	primary key(id)
    
);

create table tb_produto(

	id bigint auto_increment,
    descricao varchar(255),
    preco decimal(10,2),
    id_categoria bigint,
    
    primary key(id),
    foreign key(id_categoria) references tb_categoria(id)

);

insert into tb_categoria(descricao) value ("Aves");
insert into tb_categoria(descricao) value ("Bovinas");
insert into tb_categoria(descricao) value ("Peixes e Frutos do Mar");
insert into tb_categoria(descricao) value ("Suínas");
insert into tb_categoria(descricao) value ("Exóticas e Especiais");

insert into tb_produto(descricao, preco, id_categoria) value ("Asa de frango 1kg", 15.39, 1);
insert into tb_produto(descricao, preco, id_categoria) value ("Coração de Frango Sadia Congelado 1kg", 32.99, 1);
insert into tb_produto(descricao, preco, id_categoria) value ("Contra filé pedaço 2kg", 125.38, 2);
insert into tb_produto(descricao, preco, id_categoria) value ("Salmão congelado filé em pedaços com pele Damm 500g", 51.69, 3);
insert into tb_produto(descricao, preco, id_categoria) value ("Costela suína com osso ao molho Barbecue Seara Gourmet 1kg", 65.99, 4);
insert into tb_produto(descricao, preco, id_categoria) value ("Costela Suína Sulita Temperada Resfriada 700g", 26.02, 4);
insert into tb_produto(descricao, preco, id_categoria) value ("PATO INTEIRO SWIFT DE 2,2 KG", 29.97, 5);
insert into tb_produto(descricao, preco, id_categoria) value ("CARRÉ CURTO DE CORDEIRO DA PATAGÔNIA SWIFT DE 0,4 KG", 109.97, 5);

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where descricao like 'C%';
select * from tb_produto inner join tb_categoria on tb_produto.id_categoria = tb_categoria.id;
select * from tb_produto as id_categoria inner join tb_categoria on id_categoria = tb_categoria.descricao like 'Aves%';