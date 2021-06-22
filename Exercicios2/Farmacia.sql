create database db_farmacia_do_bem ;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Remedio",true);
insert into tb_categoria (descricao, ativo) values ("Cosmético",true);
insert into tb_categoria (descricao, ativo) values ("Higiene",true);
insert into tb_categoria (descricao, ativo) values ("Vitaminas",true);

select * from tb_categoria;

create table tb_produtos (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Dorflex",40.00,300, "2024-06-07", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Absorvente",30.00,30, "2022-06-06", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Gloss Rare Beauty",20.00,1, "2024-11-09", 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Lavitan A",16.00,100, "2024-06-07", 4);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("B-Platin",60.00,300, "2024-06-07", 1);


select* from tb_produtos where preco > 50;

select* from tb_produtos where preco between 3 and 60;

select* from tb_produtos where nome like "%B";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;