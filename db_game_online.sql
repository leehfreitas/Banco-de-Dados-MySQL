create database db_generation_game_online;

-- Crie uma tabela tb_classe utilizando a habilidade de abstraçao e determine 3 atributos
-- relevantes da classe para se trabalhar com o serviço desse gama online

create table tb_classe(
        id bigint auto_increment,
        
        categoria varchar(255) not null,
            nivel int not null,
		exp_adquirida int not null,
        
        primary key (id)
);
select * from tb_classe;

-- popule esta tabela classe com ate 5 dados

insert into tb_classe (categoria, nivel, exp_adquirida) values ("Arqueiro", 54, "54000");
insert into tb_classe (categoria, nivel, exp_adquirida) values ("Mago", 33, "330000");
insert into tb_classe (categoria, nivel, exp_adquirida) values ("Arquimago", 78, "78000");
insert into tb_classe (categoria, nivel, exp_adquirida) values ("Assassino", 42, "42000");
insert into tb_classe (categoria, nivel, exp_adquirida) values ("Alquimista", 30, "30000");

select * from tb_classe;

-- crie  uma tabela tb_personagem
-- e utilizando a habilidade de abstraçao e determine 5 atributos
-- relevantes dos funcionarios para se trabalhar com o serviço desse game online
-- (nao esqueça de criar a foreign key tb_clase nesta tabela)

create table tb_personagem(
        id bigint auto_increment,
        
	nome varchar(255) not null,
    velocidade bigint not null,
    ataque_magico bigint not null,
    ataque bigint not null,
    classe_id bigint,
    
         primary key (id),
	foreign key (classe_id) references tb_classe (id)
);
select * from tb_personagem;

-- popule esta tabela personagem com ate 8 dados

-- Arqueiros
insert into tb_personagem (nome, velocidade, ataque_magico, ataque, defesa, classe_id) values ("x1_Duarte", 300, 1000, 9000, 1000, 1);
insert into tb_personagem (nome, velocidade, ataque_magico, ataque, defesa, classe_id) values ("mari_baunilha", 300, 1000, 6550, 1000, 1); 

-- Magos
insert into tb_personagem (nome, velocidade, ataque_magico, ataque, defesa, classe_id) values ("gabs_subibs", 200, 5000, 1000, 1000, 2);
insert into tb_personagem (nome, velocidade, ataque_magico, ataque, defesa, classe_id) values ("marco_arquiteto", 200, 4000, 1000, 1000, 2); 

-- Arquimago
insert into tb_personagem (nome, velocidade, ataque_magico, ataque, defesa, classe_id) values ("costinha_hue", 200, 9000, 1000, 2000, 3);

-- Assassino
insert into tb_personagem (nome, velocidade, ataque_magico, ataque, defesa, classe_id) values ("mayq_blue", 250, 2000, 2500, 3000, 4);
insert into tb_personagem (nome, velocidade, ataque_magico, ataque, defesa, classe_id) values ("wes_zarps", 150, 2000, 1500, 3000, 4);

-- Alquimista 
insert into tb_personagem (nome, velocidade, ataque_magico, ataque, defesa, classe_id) values ("joao_javamam", 150, 1500, 1500, 2000, 3);

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where nome like "%C%" ;

-- faça um select com Inner join entre tabela classe e personagem
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.nome, tb_classe.categoria, tb_classe.nivel, tb_personagem.ataque, tb_personagem.defesa
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id;

-- faça um select onde traga todos os personagem de uma classe especifica ( exemplo todos os personagens que sao arqueiros)
select * from tb_personagem where classe_id = 1  -- personagens arqueiros