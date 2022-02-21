create database db_farmacia_do_bem;

use db_farmacia_do_bem;

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

insert into tb_categoria(descricao) value ("Cosméticos");
insert into tb_categoria(descricao) value ("Original");
insert into tb_categoria(descricao) value ("Genérico");
insert into tb_categoria(descricao) value ("Vitaminas");
insert into tb_categoria(descricao) value ("Suplementos alimentares");

insert into tb_produto(descricao, preco, id_categoria) value ("Rivotril", 21.99, 2);
insert into tb_produto(descricao, preco, id_categoria) value ("Esmalte", 7.99, 1);
insert into tb_produto(descricao, preco, id_categoria) value ("Multivitamínico Centrum VitaGomas 60 Gomas", 80.10, 4);
insert into tb_produto(descricao, preco, id_categoria) value ("Rosuvastatina Cálcica 20mg Genérico Cimed 30 Comprimidos", 48.00, 3);
insert into tb_produto(descricao, preco, id_categoria) value ("Suplemento Alimentar Nestlé Nutren Senior Sem Sabor 740g", 123.99, 5	);
insert into tb_produto(descricao, preco, id_categoria) value ("Desodorante Antitranspirante Rexona Men Clinical Aerosol 150ml", 13.85, 1);
insert into tb_produto(descricao, preco, id_categoria) value ("Kit Sabonete Líquido Íntimo Dermacyd Femina 200ml + 100ml", 26.90, 1);
insert into tb_produto(descricao, preco, id_categoria) value ("Removedor De Esmalte Sem Acetona Ever Care 100ml", 3.55, 1);

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where descricao like 'L%';
select * from tb_produto inner join tb_categoria on tb_produto.id_categoria = tb_categoria.id;
select * from tb_produto as id_categoria inner join tb_categoria on id_categoria = tb_categoria.descricao like 'Cosméticos%';