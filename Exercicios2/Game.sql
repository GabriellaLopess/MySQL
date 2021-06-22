create database db_game_online ;

use db_game_online;

create table tb_classe(
id bigint (5) auto_increment,
nome varchar(255) not null,
habilidade varchar(255) not null,
primary key (id)
);



insert into tb_classe (nome,habilidade) values ("Arqueiro","Atirar");
insert into tb_classe (nome,habilidade) values ("Assassino","Usar Adaga");
insert into tb_classe (nome,habilidade) values ("Tank","Usar Escudo");
insert into tb_classe (nome,habilidade) values ("Mago","Magia");
insert into tb_classe (nome,habilidade) values ("Curandeiro","Curar");



select * from tb_classe;

create table tb_personagem(
id bigint auto_increment, 
nome varchar(225),
nivel int,
ataque int,
defesa int ,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome,nivel,ataque,defesa,classe_id) values ("Effie", 30,2000,1000, 1) ;
insert into tb_personagem (nome,nivel,ataque,defesa,classe_id) values ("Cazord", 40,2000,4000, 3) ;
insert into tb_personagem (nome,nivel,ataque,defesa,classe_id) values ("Katarine", 40,4000,1000, 2) ;
insert into tb_personagem (nome,nivel,ataque,defesa,classe_id) values ("Mage", 50,3000,2000, 4) ;
insert into tb_personagem (nome,nivel,ataque,defesa,classe_id) values ("Heather", 50,1000,4000, 5) ;


select* from tb_personagem where ataque > 2000;

select* from tb_personagem where defesa between 1000 and 2000;

select* from tb_personagem where nome like "%c%";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;
