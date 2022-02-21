create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

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
    
    primary key (id),
    foreign key(id_categoria) references tb_categoria(id)

);

insert into tb_categoria (descricao) value ("Material de Construção");
insert into tb_categoria (descricao) value ("Tintas e Acessórios");
insert into tb_categoria (descricao) value ("Impermeabilizante");
insert into tb_categoria (descricao) value ("Ferramentas");
insert into tb_categoria (descricao) value ("Banheiro");

insert into tb_produto (descricao, preco, id_categoria) value ("Cimento CP-II E-32 RS 50KG - Nacional", 29.11, 1);
insert into tb_produto (descricao, preco, id_categoria) value ("Bloco Cerâmico 9 X 19 X 29 Vedação - Tec Brasil", 1.66, 1);
insert into tb_produto (descricao, preco, id_categoria) value ("Tinta Super Lavável Antimancha Branco 18L - Coral", 654.47, 2);
insert into tb_produto (descricao, preco, id_categoria) value ("Tinta Piso Concreto Puro 18L - Suvinil", 311.90, 2);
insert into tb_produto (descricao, preco, id_categoria) value ("Aditivo Impermeabilizante Balde 18L - Vedacit", 122.72, 3);
insert into tb_produto (descricao, preco, id_categoria) value ("Martelo de Borracha 80MM Branco - Stamaco", 87.94, 4);
insert into tb_produto (descricao, preco, id_categoria) value ("Ducha Higiênica Acqua Jet Gyro 2195 Cromada Tigre", 176.62, 5);
insert into tb_produto (descricao, preco, id_categoria) value ("Chuveiro de Parede Max 1977C.CT Deca", 218.14, 5);

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where descricao like 'C%';
select * from tb_produto inner join tb_categoria on tb_produto.id_categoria = tb_categoria.id;
select * from tb_produto as id_categoria inner join tb_categoria on id_categoria = tb_categoria.descricao like 'Banheiro%';