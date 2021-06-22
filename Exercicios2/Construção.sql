create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida; 

create table tb_categoria(
id bigint(5) auto_increment,
departamento varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (departamento, ativo) values ("Casa",true);
insert into tb_categoria (departamento, ativo) values ("Lazer",true);
insert into tb_categoria (departamento, ativo) values ("Hidraulica",true);
insert into tb_categoria (departamento, ativo) values ("Jardim",true);

select * from tb_categoria;

create table tb_produtos (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco,categoria_id) values ("Sofa", 500.0, 1);
insert into tb_produtos (nome, preco,categoria_id) values ("Cloro de piscina", 120.0, 2);
insert into tb_produtos (nome, preco,categoria_id) values ("Privada", 80.0, 3);
insert into tb_produtos (nome, preco,categoria_id) values ("Regador", 40.0, 4);
insert into tb_produtos (nome, preco,categoria_id) values ("Adubo", 30.0, 4);
insert into tb_produtos (nome, preco,categoria_id) values ("Tapete", 50.0, 1);
insert into tb_produtos (nome, preco,categoria_id) values ("Torneira", 60.0, 3);
insert into tb_produtos (nome, preco,categoria_id) values ("Cimento", 100.0, 1);



select* from tb_produtos where preco > 50;

select* from tb_produtos where preco between 3 and 60;

select* from tb_produtos where nome like "%C%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;